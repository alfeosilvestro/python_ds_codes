import plotly.express as px
import dataiku
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd


def scatter_plot_fig(df, x_col, y_col, color_col, size_col):
    return px.scatter(df, x=x_col, y=y_col, color=color_col, size=size_col)
