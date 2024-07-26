# Instructions for Modifying the redis-py Repository and Running Tests

## Modify related files in the redis-py Repository to Accommodate Eloqkv
1. Check out `test_eloqkv_zx` branch.
2. Install pytest to run the test:
    ```sh
    pip install pytest
    ```

## Modify Test Cases in tests/test_*.py Files
- The tests are under `def test_*` function, you could add `@skip_for_unknown_command()` before the test to skip it.
- Or you could define your own flag in `tests/conftest.py`.

## Steps to Run Tests

### 1. Start Redis Server
- Start the Redis server using `eloqkv`:

    ```sh
    path/to/eloqkv --config=path/to/config_file
    ```

### 2. Run Specific Tests
- Use pytest to run specific test cases:

    ```sh
    # run specific test in tests/test_commands.py
    pytest -s -vv /home/mono/workspace/redis_client/redis-py/tests/test_commands.py::TestRedisCommands::test_bitop_not_empty_string

    # run all the tests in tests/test_commands.py
    pytest -s -vv /home/mono/workspace/redis_client/redis-py/tests/test_commands.py
    
    ```


