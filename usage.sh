pip install redis pytest
git clone https://github.com/redis/redis-py.git
cd redis-py


# start redis

pytest -s -vv /home/mono/workspace/redis_client/redis-py/tests/test_commands.py > /home/mono/workspace/redis_client/redis-py/zx.log 2>&1
pytest -s -vv /home/mono/workspace/redis_client/redis-py/tests/test_commands.py::TestRedisCommands::test_bitop_not_empty_string

