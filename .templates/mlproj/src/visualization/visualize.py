# @Author: juan
# @Date:   2019-01-07T18:03:20+09:00
# @Last modified by:   juan
# @Last modified time: 2019-01-08T11:33:18+09:00

import logging

import click


@click.command(short_help='Exploratory oriented visualizations.')
@click.argument('dataset_path', type=click.Path(exists=True))
@click.argument('report_path', type=click.Path())
def visualize_data(dataset_path, report_path):
    """Creates exploratory oriented visualizations.

    Reads a dataset from DATASET_PATH, creates exploratory
    visualizations and saves them in REPORT_PATH.
    """
    logger = logging.getLogger(__name__)
    logger.info('reading dataset from {}'.format(dataset_path))
    logger.info('saving report in {}'.format(report_path))
