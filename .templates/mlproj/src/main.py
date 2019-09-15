# @Author: juan
# @Date:   2019-01-07T18:01:11+09:00
# @Last modified by:   juan
# @Last modified time: 2019-01-08T11:29:37+09:00

import logging
import os
import sys

import click

from data.make_dataset import make_dataset
from data.split_dataset import split_dataset
from features.build_features import build_features
from models.predict import predict, test_model
from models.train_model import train_model
from visualization.visualize import visualize_data


@click.group(context_settings={'help_option_names': ['-h', '--help']})
@click.option(
    '-v', '--verbose', default=False, is_flag=True, help='Print more logs.')
@click.pass_context
def cli(ctx, verbose):
    """Command line interface."""
    ctx.obj['verbose'] = verbose

    log_fmt = '%(asctime)s - %(name)s - %(levelname)s - %(message)s'
    log_lvl = logging.INFO if verbose else logging.WARN
    logging.basicConfig(level=log_lvl, format=log_fmt)


cli.add_command(make_dataset)
cli.add_command(split_dataset)
cli.add_command(build_features)
cli.add_command(predict)
cli.add_command(train_model)
cli.add_command(test_model)
cli.add_command(visualize_data)


def load_config():
    project_dir = os.path.join(os.path.dirname(__file__))
    sys.path.append(project_dir)
    cli(obj={})


if __name__ == '__main__':
    load_config()
