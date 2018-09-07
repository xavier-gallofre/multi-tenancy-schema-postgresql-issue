package demo

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import org.grails.datastore.gorm.jdbc.schema.DefaultSchemaHandler

@CompileStatic
@Slf4j
class PostgreSQLSchemaHandler extends DefaultSchemaHandler {

    PostgreSQLSchemaHandler() {
        super("SET SCHEMA '%s'", "CREATE SCHEMA '%s'", "public")
    }
}