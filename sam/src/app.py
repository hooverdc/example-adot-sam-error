import os
import json
from opentelemetry import trace

tracer = trace.get_tracer(__name__)

@tracer.start_as_current_span("main_logic")
def main_logic(event, context):
    print("main logic")


def lambda_handler(event, context):
    span = trace.get_current_span()
    span.set_attribute("lambda.event", json.dumps(event))

    try:
        main_logic(event, context)
    except Exception as ex:
        raise ex
