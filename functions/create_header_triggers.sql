\connect c3s311a
CREATE OR REPLACE FUNCTION header_insert_trigger()
    RETURNS TRIGGER AS $$
    BEGIN
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1800-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1801-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1800_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1800_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1800_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1800_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1801-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1802-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1801_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1801_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1801_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1801_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1802-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1803-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1802_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1802_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1802_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1802_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1803-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1804-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1803_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1803_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1803_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1803_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1804-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1805-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1804_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1804_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1804_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1804_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1805-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1806-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1805_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1805_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1805_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1805_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1806-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1807-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1806_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1806_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1806_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1806_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1807-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1808-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1807_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1807_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1807_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1807_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1808-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1809-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1808_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1808_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1808_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1808_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1809-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1810-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1809_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1809_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1809_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1809_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1810-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1811-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1810_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1810_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1810_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1810_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1811-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1812-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1811_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1811_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1811_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1811_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1812-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1813-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1812_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1812_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1812_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1812_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1813-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1814-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1813_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1813_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1813_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1813_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1814-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1815-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1814_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1814_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1814_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1814_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1815-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1816-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1815_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1815_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1815_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1815_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1816-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1817-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1816_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1816_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1816_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1816_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1817-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1818-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1817_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1817_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1817_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1817_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1818-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1819-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1818_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1818_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1818_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1818_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1819-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1820-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1819_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1819_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1819_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1819_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1820-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1821-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1820_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1820_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1820_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1820_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1821-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1822-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1821_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1821_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1821_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1821_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1822-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1823-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1822_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1822_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1822_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1822_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1823-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1824-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1823_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1823_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1823_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1823_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1824-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1825-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1824_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1824_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1824_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1824_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1825-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1826-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1825_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1825_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1825_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1825_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1826-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1827-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1826_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1826_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1826_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1826_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1827-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1828-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1827_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1827_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1827_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1827_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1828-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1829-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1828_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1828_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1828_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1828_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1829-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1830-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1829_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1829_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1829_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1829_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1830-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1831-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1830_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1830_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1830_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1830_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1831-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1832-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1831_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1831_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1831_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1831_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1832-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1833-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1832_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1832_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1832_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1832_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1833-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1834-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1833_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1833_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1833_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1833_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1834-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1835-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1834_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1834_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1834_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1834_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1835-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1836-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1835_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1835_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1835_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1835_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1836-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1837-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1836_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1836_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1836_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1836_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1837-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1838-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1837_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1837_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1837_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1837_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1838-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1839-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1838_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1838_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1838_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1838_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1839-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1840-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1839_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1839_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1839_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1839_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1840-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1841-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1840_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1840_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1840_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1840_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1841-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1842-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1841_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1841_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1841_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1841_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1842-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1843-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1842_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1842_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1842_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1842_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1843-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1844-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1843_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1843_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1843_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1843_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1844-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1845-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1844_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1844_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1844_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1844_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1845-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1846-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1845_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1845_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1845_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1845_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1846-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1847-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1846_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1846_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1846_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1846_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1847-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1848-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1847_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1847_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1847_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1847_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1848-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1849-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1848_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1848_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1848_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1848_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1849-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1850-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1849_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1849_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1849_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1849_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1850-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1851-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1850_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1850_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1850_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1850_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1851-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1852-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1851_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1851_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1851_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1851_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1852-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1853-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1852_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1852_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1852_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1852_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1853-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1854-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1853_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1853_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1853_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1853_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1854-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1855-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1854_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1854_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1854_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1854_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1855-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1856-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1855_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1855_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1855_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1855_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1856-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1857-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1856_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1856_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1856_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1856_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1857-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1858-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1857_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1857_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1857_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1857_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1858-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1859-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1858_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1858_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1858_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1858_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1859-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1860-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1859_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1859_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1859_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1859_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1860-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1861-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1860_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1860_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1860_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1860_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1861-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1862-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1861_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1861_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1861_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1861_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1862-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1863-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1862_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1862_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1862_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1862_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1863-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1864-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1863_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1863_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1863_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1863_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1864-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1865-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1864_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1864_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1864_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1864_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1865-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1866-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1865_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1865_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1865_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1865_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1866-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1867-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1866_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1866_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1866_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1866_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1867-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1868-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1867_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1867_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1867_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1867_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1868-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1869-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1868_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1868_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1868_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1868_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1869-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1870-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1869_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1869_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1869_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1869_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1870-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1871-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1870_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1870_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1870_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1870_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1871-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1872-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1871_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1871_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1871_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1871_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1872-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1873-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1872_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1872_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1872_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1872_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1873-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1874-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1873_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1873_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1873_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1873_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1874-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1875-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1874_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1874_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1874_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1874_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1875-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1876-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1875_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1875_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1875_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1875_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1876-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1877-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1876_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1876_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1876_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1876_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1877-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1878-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1877_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1877_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1877_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1877_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1878-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1879-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1878_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1878_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1878_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1878_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1879-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1880-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1879_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1879_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1879_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1879_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1880-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1881-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1880_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1880_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1880_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1880_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1881-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1882-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1881_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1881_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1881_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1881_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1882-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1883-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1882_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1882_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1882_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1882_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1883-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1884-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1883_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1883_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1883_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1883_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1884-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1885-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1884_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1884_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1884_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1884_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1885-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1886-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1885_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1885_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1885_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1885_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1886-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1887-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1886_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1886_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1886_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1886_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1887-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1888-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1887_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1887_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1887_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1887_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1888-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1889-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1888_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1888_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1888_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1888_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1889-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1890-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1889_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1889_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1889_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1889_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1890-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1891-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1890_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1890_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1890_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1890_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1891-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1892-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1891_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1891_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1891_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1891_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1892-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1893-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1892_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1892_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1892_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1892_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1893-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1894-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1893_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1893_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1893_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1893_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1894-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1895-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1894_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1894_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1894_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1894_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1895-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1896-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1895_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1895_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1895_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1895_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1896-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1897-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1896_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1896_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1896_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1896_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1897-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1898-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1897_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1897_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1897_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1897_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1898-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1899-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1898_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1898_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1898_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1898_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1899-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1900-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1899_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1899_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1899_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1899_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1900-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1901-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1900_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1900_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1900_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1900_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1901-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1902-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1901_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1901_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1901_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1901_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1902-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1903-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1902_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1902_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1902_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1902_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1903-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1904-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1903_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1903_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1903_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1903_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1904-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1905-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1904_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1904_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1904_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1904_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1905-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1906-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1905_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1905_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1905_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1905_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1906-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1907-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1906_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1906_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1906_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1906_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1907-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1908-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1907_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1907_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1907_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1907_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1908-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1909-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1908_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1908_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1908_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1908_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1909-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1910-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1909_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1909_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1909_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1909_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1910-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1911-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1910_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1910_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1910_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1910_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1911-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1912-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1911_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1911_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1911_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1911_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1912-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1913-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1912_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1912_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1912_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1912_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1913-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1914-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1913_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1913_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1913_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1913_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1914-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1915-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1914_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1914_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1914_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1914_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1915-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1916-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1915_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1915_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1915_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1915_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1916-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1917-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1916_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1916_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1916_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1916_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1917-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1918-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1917_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1917_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1917_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1917_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1918-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1919-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1918_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1918_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1918_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1918_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1919-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1920-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1919_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1919_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1919_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1919_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1920-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1921-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1920_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1920_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1920_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1920_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1921-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1922-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1921_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1921_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1921_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1921_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1922-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1923-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1922_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1922_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1922_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1922_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1923-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1924-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1923_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1923_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1923_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1923_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1924-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1925-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1924_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1924_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1924_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1924_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1925-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1926-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1925_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1925_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1925_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1925_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1926-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1927-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1926_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1926_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1926_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1926_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1927-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1928-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1927_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1927_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1927_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1927_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1928-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1929-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1928_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1928_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1928_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1928_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1929-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1930-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1929_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1929_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1929_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1929_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1930-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1931-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1930_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1930_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1930_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1930_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1931-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1932-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1931_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1931_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1931_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1931_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1932-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1933-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1932_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1932_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1932_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1932_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1933-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1934-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1933_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1933_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1933_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1933_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1934-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1935-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1934_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1934_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1934_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1934_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1935-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1936-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1935_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1935_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1935_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1935_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1936-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1937-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1936_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1936_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1936_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1936_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1937-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1938-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1937_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1937_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1937_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1937_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1938-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1939-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1938_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1938_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1938_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1938_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1939-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1940-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1939_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1939_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1939_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1939_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1940-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1941-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1940_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1940_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1940_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1940_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1941-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1942-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1941_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1941_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1941_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1941_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1942-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1943-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1942_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1942_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1942_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1942_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1943-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1944-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1943_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1943_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1943_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1943_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1944-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1945-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1944_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1944_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1944_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1944_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1945-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1946-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1945_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1945_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1945_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1945_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1946-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1947-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1946_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1946_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1946_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1946_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1947-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1948-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1947_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1947_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1947_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1947_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1948-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1949-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1948_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1948_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1948_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1948_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1949-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1950-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1949_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1949_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1949_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1949_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1950-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1951-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1950_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1950_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1950_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1950_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1951-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1952-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1951_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1951_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1951_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1951_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1952-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1953-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1952_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1952_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1952_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1952_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1953-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1954-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1953_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1953_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1953_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1953_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1954-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1955-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1954_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1954_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1954_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1954_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1955-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1956-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1955_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1955_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1955_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1955_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1956-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1957-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1956_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1956_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1956_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1956_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1957-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1958-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1957_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1957_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1957_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1957_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1958-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1959-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1958_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1958_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1958_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1958_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1959-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1960-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1959_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1959_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1959_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1959_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1960-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1961-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1960_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1960_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1960_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1960_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1961-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1962-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1961_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1961_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1961_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1961_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1962-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1963-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1962_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1962_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1962_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1962_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1963-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1964-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1963_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1963_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1963_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1963_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1964-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1965-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1964_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1964_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1964_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1964_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1965-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1966-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1965_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1965_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1965_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1965_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1966-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1967-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1966_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1966_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1966_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1966_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1967-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1968-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1967_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1967_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1967_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1967_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1968-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1969-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1968_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1968_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1968_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1968_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1969-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1970-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1969_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1969_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1969_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1969_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1970-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1971-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1970_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1970_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1970_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1970_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1971-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1972-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1971_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1971_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1971_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1971_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1972-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1973-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1972_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1972_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1972_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1972_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1973-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1974-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1973_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1973_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1973_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1973_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1974-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1975-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1974_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1974_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1974_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1974_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1975-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1976-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1975_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1975_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1975_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1975_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1976-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1977-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1976_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1976_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1976_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1976_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1977-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1978-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1977_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1977_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1977_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1977_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1978-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1979-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1978_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1978_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1978_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1978_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1979-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1980-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1979_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1979_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1979_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1979_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1980-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1981-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1980_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1980_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1980_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1980_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1981-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1982-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1981_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1981_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1981_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1981_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1982-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1983-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1982_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1982_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1982_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1982_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1983-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1984-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1983_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1983_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1983_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1983_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1984-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1985-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1984_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1984_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1984_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1984_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1985-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1986-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1985_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1985_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1985_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1985_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1986-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1987-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1986_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1986_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1986_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1986_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1987-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1988-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1987_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1987_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1987_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1987_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1988-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1989-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1988_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1988_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1988_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1988_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1989-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1990-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1989_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1989_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1989_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1989_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1990-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1991-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1990_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1990_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1990_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1990_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1991-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1992-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1991_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1991_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1991_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1991_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1992-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1993-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1992_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1992_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1992_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1992_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1993-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1994-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1993_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1993_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1993_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1993_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1994-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1995-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1994_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1994_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1994_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1994_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1995-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1996-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1995_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1995_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1995_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1995_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1996-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1997-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1996_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1996_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1996_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1996_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1997-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1998-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1997_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1997_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1997_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1997_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1998-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '1999-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1998_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1998_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1998_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1998_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '1999-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2000-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1999_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_1999_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_1999_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_1999_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2000-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2001-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2000_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2000_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2000_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2000_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2001-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2002-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2001_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2001_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2001_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2001_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2002-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2003-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2002_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2002_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2002_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2002_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2003-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2004-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2003_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2003_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2003_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2003_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2004-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2005-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2004_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2004_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2004_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2004_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2005-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2006-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2005_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2005_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2005_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2005_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2006-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2007-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2006_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2006_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2006_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2006_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2007-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2008-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2007_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2007_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2007_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2007_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2008-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2009-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2008_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2008_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2008_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2008_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2009-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2010-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2009_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2009_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2009_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2009_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2010-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2011-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2010_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2010_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2010_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2010_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2011-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2012-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2011_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2011_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2011_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2011_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2012-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2013-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2012_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2012_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2012_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2012_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2013-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2014-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2013_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2013_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2013_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2013_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2014-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2015-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2014_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2014_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2014_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2014_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2015-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2016-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2015_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2015_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2015_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2015_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2016-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2017-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2016_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2016_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2016_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2016_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2017-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2018-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2017_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2017_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2017_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2017_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
        IF NEW.report_timestamp >= TIMESTAMP WITH TIME ZONE '2018-01-01 00:00:0.0+0' AND NEW.report_timestamp < TIMESTAMP WITH TIME ZONE '2019-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2018_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO header_2018_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO header_2018_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO header_2018_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in header_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in header_insert_trigger';
            END IF;
        END IF;
      RETURN NULL;
    END
$$
LANGUAGE plpgsql;
