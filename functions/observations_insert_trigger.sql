\connect c3s311a
CREATE OR REPLACE FUNCTION __INSERT_SCHEMA__.observations_insert_trigger()
    RETURNS TRIGGER AS $$
    BEGIN
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1752-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1753-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1752_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1752_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1752_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1752_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1753-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1754-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1753_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1753_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1753_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1753_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1754-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1755-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1754_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1754_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1754_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1754_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1755-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1756-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1755_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1755_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1755_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1755_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1756-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1757-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1756_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1756_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1756_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1756_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1757-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1758-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1757_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1757_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1757_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1757_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1758-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1759-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1758_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1758_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1758_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1758_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1759-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1760-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1759_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1759_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1759_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1759_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1760-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1761-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1760_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1760_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1760_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1760_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1761-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1762-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1761_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1761_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1761_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1761_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1762-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1763-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1762_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1762_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1762_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1762_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1763-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1764-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1763_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1763_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1763_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1763_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1764-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1765-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1764_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1764_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1764_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1764_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1765-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1766-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1765_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1765_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1765_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1765_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1766-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1767-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1766_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1766_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1766_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1766_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1767-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1768-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1767_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1767_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1767_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1767_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1768-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1769-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1768_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1768_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1768_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1768_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1769-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1770-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1769_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1769_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1769_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1769_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1770-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1771-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1770_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1770_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1770_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1770_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1771-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1772-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1771_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1771_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1771_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1771_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1772-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1773-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1772_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1772_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1772_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1772_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1773-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1774-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1773_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1773_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1773_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1773_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1774-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1775-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1774_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1774_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1774_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1774_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1775-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1776-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1775_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1775_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1775_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1775_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1776-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1777-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1776_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1776_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1776_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1776_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1777-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1778-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1777_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1777_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1777_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1777_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1778-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1779-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1778_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1778_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1778_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1778_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1779-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1780-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1779_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1779_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1779_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1779_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1780-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1781-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1780_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1780_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1780_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1780_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1781-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1782-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1781_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1781_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1781_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1781_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1782-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1783-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1782_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1782_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1782_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1782_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1783-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1784-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1783_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1783_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1783_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1783_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1784-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1785-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1784_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1784_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1784_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1784_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1785-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1786-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1785_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1785_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1785_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1785_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1786-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1787-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1786_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1786_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1786_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1786_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1787-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1788-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1787_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1787_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1787_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1787_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1788-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1789-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1788_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1788_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1788_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1788_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1789-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1790-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1789_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1789_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1789_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1789_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1790-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1791-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1790_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1790_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1790_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1790_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1791-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1792-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1791_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1791_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1791_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1791_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1792-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1793-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1792_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1792_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1792_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1792_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1793-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1794-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1793_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1793_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1793_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1793_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1794-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1795-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1794_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1794_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1794_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1794_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1795-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1796-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1795_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1795_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1795_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1795_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1796-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1797-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1796_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1796_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1796_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1796_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1797-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1798-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1797_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1797_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1797_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1797_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1798-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1799-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1798_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1798_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1798_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1798_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1799-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1800-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1799_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1799_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1799_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1799_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1800-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1801-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1800_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1800_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1800_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1800_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1801-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1802-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1801_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1801_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1801_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1801_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1802-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1803-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1802_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1802_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1802_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1802_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1803-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1804-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1803_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1803_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1803_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1803_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1804-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1805-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1804_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1804_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1804_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1804_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1805-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1806-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1805_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1805_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1805_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1805_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1806-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1807-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1806_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1806_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1806_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1806_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1807-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1808-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1807_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1807_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1807_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1807_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1808-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1809-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1808_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1808_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1808_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1808_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1809-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1810-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1809_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1809_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1809_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1809_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1810-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1811-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1810_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1810_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1810_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1810_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1811-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1812-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1811_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1811_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1811_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1811_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1812-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1813-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1812_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1812_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1812_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1812_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1813-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1814-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1813_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1813_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1813_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1813_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1814-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1815-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1814_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1814_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1814_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1814_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1815-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1816-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1815_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1815_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1815_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1815_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1816-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1817-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1816_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1816_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1816_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1816_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1817-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1818-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1817_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1817_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1817_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1817_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1818-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1819-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1818_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1818_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1818_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1818_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1819-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1820-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1819_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1819_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1819_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1819_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1820-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1821-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1820_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1820_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1820_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1820_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1821-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1822-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1821_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1821_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1821_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1821_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1822-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1823-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1822_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1822_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1822_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1822_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1823-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1824-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1823_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1823_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1823_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1823_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1824-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1825-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1824_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1824_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1824_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1824_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1825-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1826-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1825_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1825_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1825_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1825_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1826-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1827-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1826_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1826_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1826_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1826_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1827-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1828-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1827_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1827_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1827_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1827_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1828-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1829-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1828_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1828_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1828_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1828_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1829-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1830-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1829_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1829_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1829_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1829_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1830-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1831-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1830_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1830_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1830_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1830_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1831-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1832-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1831_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1831_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1831_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1831_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1832-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1833-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1832_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1832_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1832_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1832_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1833-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1834-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1833_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1833_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1833_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1833_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1834-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1835-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1834_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1834_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1834_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1834_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1835-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1836-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1835_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1835_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1835_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1835_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1836-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1837-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1836_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1836_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1836_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1836_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1837-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1838-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1837_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1837_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1837_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1837_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1838-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1839-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1838_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1838_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1838_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1838_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1839-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1840-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1839_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1839_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1839_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1839_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1840-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1841-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1840_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1840_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1840_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1840_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1841-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1842-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1841_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1841_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1841_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1841_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1842-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1843-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1842_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1842_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1842_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1842_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1843-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1844-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1843_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1843_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1843_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1843_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1844-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1845-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1844_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1844_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1844_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1844_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1845-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1846-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1845_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1845_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1845_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1845_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1846-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1847-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1846_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1846_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1846_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1846_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1847-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1848-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1847_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1847_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1847_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1847_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1848-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1849-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1848_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1848_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1848_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1848_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1849-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1850-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1849_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1849_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1849_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1849_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1850-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1851-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1850_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1850_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1850_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1850_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1851-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1852-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1851_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1851_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1851_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1851_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1852-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1853-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1852_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1852_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1852_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1852_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1853-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1854-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1853_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1853_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1853_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1853_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1854-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1855-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1854_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1854_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1854_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1854_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1855-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1856-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1855_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1855_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1855_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1855_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1856-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1857-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1856_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1856_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1856_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1856_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1857-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1858-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1857_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1857_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1857_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1857_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1858-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1859-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1858_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1858_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1858_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1858_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1859-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1860-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1859_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1859_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1859_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1859_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1860-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1861-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1860_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1860_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1860_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1860_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1861-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1862-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1861_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1861_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1861_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1861_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1862-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1863-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1862_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1862_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1862_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1862_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1863-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1864-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1863_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1863_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1863_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1863_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1864-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1865-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1864_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1864_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1864_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1864_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1865-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1866-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1865_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1865_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1865_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1865_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1866-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1867-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1866_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1866_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1866_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1866_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1867-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1868-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1867_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1867_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1867_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1867_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1868-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1869-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1868_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1868_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1868_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1868_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1869-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1870-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1869_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1869_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1869_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1869_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1870-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1871-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1870_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1870_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1870_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1870_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1871-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1872-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1871_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1871_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1871_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1871_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1872-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1873-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1872_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1872_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1872_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1872_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1873-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1874-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1873_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1873_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1873_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1873_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1874-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1875-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1874_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1874_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1874_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1874_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1875-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1876-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1875_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1875_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1875_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1875_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1876-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1877-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1876_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1876_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1876_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1876_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1877-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1878-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1877_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1877_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1877_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1877_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1878-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1879-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1878_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1878_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1878_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1878_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1879-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1880-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1879_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1879_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1879_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1879_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1880-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1881-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1880_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1880_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1880_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1880_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1881-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1882-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1881_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1881_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1881_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1881_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1882-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1883-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1882_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1882_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1882_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1882_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1883-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1884-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1883_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1883_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1883_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1883_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1884-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1885-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1884_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1884_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1884_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1884_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1885-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1886-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1885_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1885_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1885_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1885_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1886-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1887-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1886_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1886_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1886_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1886_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1887-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1888-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1887_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1887_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1887_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1887_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1888-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1889-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1888_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1888_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1888_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1888_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1889-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1890-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1889_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1889_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1889_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1889_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1890-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1891-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1890_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1890_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1890_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1890_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1891-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1892-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1891_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1891_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1891_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1891_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1892-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1893-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1892_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1892_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1892_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1892_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1893-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1894-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1893_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1893_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1893_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1893_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1894-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1895-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1894_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1894_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1894_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1894_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1895-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1896-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1895_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1895_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1895_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1895_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1896-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1897-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1896_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1896_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1896_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1896_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1897-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1898-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1897_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1897_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1897_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1897_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1898-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1899-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1898_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1898_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1898_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1898_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1899-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1900-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1899_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1899_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1899_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1899_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1900-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1901-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1900_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1900_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1900_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1900_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1901-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1902-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1901_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1901_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1901_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1901_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1902-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1903-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1902_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1902_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1902_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1902_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1903-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1904-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1903_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1903_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1903_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1903_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1904-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1905-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1904_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1904_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1904_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1904_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1905-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1906-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1905_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1905_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1905_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1905_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1906-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1907-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1906_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1906_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1906_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1906_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1907-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1908-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1907_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1907_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1907_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1907_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1908-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1909-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1908_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1908_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1908_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1908_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1909-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1910-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1909_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1909_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1909_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1909_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1910-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1911-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1910_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1910_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1910_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1910_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1911-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1912-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1911_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1911_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1911_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1911_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1912-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1913-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1912_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1912_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1912_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1912_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1913-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1914-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1913_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1913_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1913_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1913_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1914-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1915-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1914_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1914_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1914_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1914_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1915-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1916-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1915_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1915_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1915_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1915_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1916-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1917-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1916_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1916_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1916_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1916_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1917-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1918-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1917_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1917_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1917_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1917_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1918-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1919-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1918_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1918_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1918_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1918_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1919-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1920-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1919_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1919_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1919_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1919_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1920-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1921-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1920_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1920_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1920_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1920_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1921-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1922-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1921_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1921_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1921_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1921_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1922-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1923-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1922_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1922_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1922_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1922_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1923-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1924-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1923_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1923_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1923_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1923_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1924-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1925-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1924_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1924_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1924_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1924_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1925-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1926-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1925_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1925_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1925_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1925_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1926-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1927-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1926_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1926_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1926_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1926_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1927-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1928-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1927_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1927_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1927_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1927_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1928-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1929-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1928_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1928_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1928_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1928_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1929-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1930-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1929_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1929_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1929_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1929_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1930-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1931-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1930_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1930_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1930_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1930_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1931-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1932-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1931_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1931_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1931_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1931_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1932-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1933-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1932_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1932_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1932_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1932_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1933-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1934-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1933_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1933_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1933_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1933_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1934-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1935-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1934_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1934_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1934_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1934_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1935-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1936-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1935_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1935_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1935_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1935_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1936-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1937-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1936_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1936_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1936_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1936_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1937-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1938-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1937_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1937_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1937_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1937_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1938-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1939-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1938_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1938_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1938_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1938_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1939-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1940-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1939_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1939_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1939_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1939_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1940-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1941-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1940_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1940_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1940_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1940_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1941-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1942-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1941_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1941_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1941_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1941_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1942-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1943-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1942_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1942_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1942_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1942_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1943-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1944-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1943_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1943_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1943_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1943_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1944-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1945-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1944_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1944_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1944_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1944_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1945-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1946-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1945_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1945_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1945_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1945_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1946-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1947-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1946_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1946_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1946_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1946_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1947-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1948-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1947_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1947_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1947_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1947_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1948-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1949-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1948_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1948_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1948_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1948_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1949-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1950-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1949_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1949_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1949_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1949_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1950-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1951-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1950_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1950_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1950_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1950_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1951-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1952-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1951_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1951_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1951_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1951_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1952-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1953-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1952_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1952_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1952_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1952_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1953-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1954-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1953_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1953_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1953_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1953_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1954-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1955-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1954_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1954_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1954_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1954_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1955-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1956-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1955_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1955_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1955_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1955_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1956-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1957-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1956_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1956_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1956_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1956_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1957-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1958-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1957_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1957_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1957_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1957_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1958-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1959-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1958_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1958_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1958_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1958_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1959-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1960-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1959_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1959_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1959_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1959_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1960-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1961-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1960_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1960_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1960_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1960_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1961-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1962-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1961_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1961_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1961_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1961_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1962-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1963-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1962_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1962_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1962_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1962_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1963-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1964-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1963_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1963_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1963_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1963_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1964-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1965-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1964_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1964_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1964_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1964_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1965-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1966-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1965_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1965_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1965_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1965_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1966-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1967-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1966_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1966_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1966_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1966_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1967-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1968-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1967_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1967_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1967_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1967_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1968-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1969-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1968_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1968_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1968_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1968_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1969-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1970-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1969_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1969_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1969_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1969_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1970-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1971-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1970_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1970_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1970_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1970_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1971-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1972-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1971_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1971_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1971_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1971_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1972-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1973-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1972_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1972_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1972_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1972_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1973-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1974-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1973_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1973_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1973_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1973_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1974-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1975-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1974_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1974_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1974_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1974_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1975-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1976-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1975_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1975_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1975_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1975_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1976-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1977-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1976_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1976_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1976_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1976_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1977-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1978-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1977_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1977_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1977_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1977_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1978-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1979-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1978_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1978_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1978_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1978_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1979-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1980-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1979_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1979_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1979_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1979_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1980-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1981-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1980_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1980_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1980_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1980_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1981-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1982-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1981_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1981_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1981_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1981_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1982-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1983-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1982_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1982_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1982_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1982_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1983-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1984-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1983_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1983_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1983_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1983_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1984-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1985-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1984_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1984_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1984_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1984_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1985-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1986-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1985_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1985_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1985_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1985_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1986-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1987-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1986_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1986_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1986_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1986_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1987-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1988-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1987_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1987_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1987_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1987_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1988-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1989-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1988_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1988_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1988_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1988_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1989-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1990-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1989_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1989_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1989_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1989_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1990-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1991-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1990_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1990_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1990_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1990_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1991-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1992-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1991_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1991_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1991_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1991_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1992-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1993-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1992_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1992_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1992_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1992_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1993-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1994-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1993_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1993_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1993_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1993_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1994-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1995-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1994_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1994_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1994_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1994_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1995-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1996-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1995_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1995_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1995_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1995_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1996-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1997-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1996_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1996_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1996_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1996_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1997-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1998-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1997_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1997_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1997_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1997_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1998-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '1999-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1998_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1998_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1998_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1998_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '1999-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2000-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1999_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1999_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1999_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_1999_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2000-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2001-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2000_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2000_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2000_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2000_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2001-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2002-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2001_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2001_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2001_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2001_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2002-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2003-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2002_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2002_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2002_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2002_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2003-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2004-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2003_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2003_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2003_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2003_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2004-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2005-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2004_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2004_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2004_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2004_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2005-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2006-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2005_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2005_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2005_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2005_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2006-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2007-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2006_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2006_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2006_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2006_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2007-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2008-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2007_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2007_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2007_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2007_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2008-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2009-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2008_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2008_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2008_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2008_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2009-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2010-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2009_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2009_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2009_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2009_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2010-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2011-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2010_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2010_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2010_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2010_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2011-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2012-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2011_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2011_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2011_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2011_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2012-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2013-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2012_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2012_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2012_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2012_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2013-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2014-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2013_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2013_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2013_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2013_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2014-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2015-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2014_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2014_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2014_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2014_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2015-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2016-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2015_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2015_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2015_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2015_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2016-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2017-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2016_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2016_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2016_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2016_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2017-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2018-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2017_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2017_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2017_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2017_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2018-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2019-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2018_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2018_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2018_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2018_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2019-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2020-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2019_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2019_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2019_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2019_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2020-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2021-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2020_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2020_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2020_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2020_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
        IF NEW.date_time >= TIMESTAMP WITH TIME ZONE '2021-01-01 00:00:0.0+0' AND NEW.date_time < TIMESTAMP WITH TIME ZONE '2022-01-01 00:00:0.0+0' THEN
            IF NEW.station_type = 1 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2021_land_0 VALUES(NEW.*);
                ELSIF NEW.report_type = 1 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2021_land_1 VALUES(NEW.*);
                ELSIF NEW.report_type = 2 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2021_land_2 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSIF NEW.station_type = 2 THEN
                IF NEW.report_type = 0 THEN
                    INSERT INTO __INSERT_SCHEMA__.observations_2021_marine_0 VALUES(NEW.*);
                ELSE
                    RAISE EXCEPTION 'Invalid report type in observations_insert_trigger';
                END IF;
            ELSE
                RAISE EXCEPTION 'Invalid station type in observations_insert_trigger';
            END IF;
        END IF;
      RETURN NULL;
    END
$$
LANGUAGE plpgsql;
