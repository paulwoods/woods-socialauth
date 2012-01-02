
dataSource {
	pooled = true
	username = "social"
	password = "social"
	driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}

environments {

    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/social_dev"
        }
    }
    
    test {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/social_test"
        }
    }
    
    production {
        dataSource {
			url = "jdbc:mysql://localhost:3306/social"
        }
    }
    
}

