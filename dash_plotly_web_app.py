import plotly.express as px
import dataiku
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd
from dash_visuals import scatter_plot_fig

## todo: 
## 1. check code environment in settings tab
## 2. check the dataset name
dataset = dataiku.Dataset("customer_history_sql_output")
df = dataset.get_dataframe()

#fig1 = px.bar(df, x="Phone", y="Day Charge", color="Churn", barmode="group")
fig2 = px.scatter(df, x="Day Charge", y="Night Charge", color="Churn", size="CustServ Calls")
fig3 = scatter_plot_fig(df, "Day Charge", "Intl Charge", "Churn", "CustServ Calls")
# fig = px.scatter(df, x="Day Charge", y="CustServ Calls", color="Churn")

app.layout = html.Div(children=[
    html.H4(children='Churn Data Visualization'),

    #dcc.Graph(
    #    id='bar',
    #    figure=fig1
    #),
    
    dcc.Graph(
        id='night_charge',
        figure=fig2
    ),
    
    dcc.Graph(
        id='int_charge',
        figure=fig3
    )
])
