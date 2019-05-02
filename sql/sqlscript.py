

def run_script(cursor, filename):
    f = open(f'sql/{filename}')
    statement = f.read()
    cursor.execute(statement)


def create_subscriber_table(cursor):
    print("Creating subscriber table...")
    run_script(cursor, 'create_first_table.sql')


def run_first_subscriber_import(cursor):
    print("Running first import...")
    run_script(cursor, 'import_subscribers_first.sql')


def run_subscriber_table_update(cursor):
    print("Creating update table...")
    cursor.execute('CREATE TABLE IF NOT EXISTS `subscribers_update` LIKE `subscribers`;')
    cursor.execute('ALTER TABLE `subscribers_update` DROP COLUMN `updated`;')
    run_script(cursor, 'load_update_table.sql')
    run_script(cursor, 'copy_updates_to_subscribers.sql')
    run_script(cursor, 'add_new_subscribers.sql')
    cursor.execute("DROP table subscribers_update;")


def drop_subscriber_table(cursor):
    print("Dropping subscriber table...")
    cursor.execute('drop table subscribers;')