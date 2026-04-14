-- RU regex patterns

INSERT INTO regular_expressions (name, pattern, description) VALUES
('RU SDR', '(?i)\bSDR\b', 'Explicit SDR marker in release title.'),
('RU HEVC', '(?i)\b(HEVC|x265|H\.?265)\b', 'HEVC / x265 / H.265 codec markers.'),
('RU WEB-DL', '(?i)\b(WEB[\s._-]?DL|WEBDL)\b', 'WEB-DL source marker.'),
('RU WEBRip', '(?i)\b(WEB[\s._-]?RIP|WEBRIP)\b', 'WEBRip source marker.'),
('RU BDRip', '(?i)\bBDRip\b', 'BDRip source marker.'),
('RU BluRay', '(?i)\bBlu[\s._-]?Ray\b', 'BluRay source marker.'),
('RU 10bit', '(?i)\b(10[\s-]?bit|10bit)\b', '10-bit marker.'),
('RU HDR DV HLG', '(?i)\b(HDR10\+|HDR10|HDR|Dolby[\s._-]?Vision|DV|HLG)\b', 'HDR / Dolby Vision / HLG markers.'),
('RU BR-DISK', '(?i)\b(BDMV|BDISO|ISO|UHD[\s._-]?BD|Blu[\s-]?ray[\s-]?Disc|BD[\s-]?ROM|COMPLETE|FULL[\s-]?BLURAY|FULL[\s-]?BD)\b', 'Full disc / BDMV / ISO markers.'),
('RU AV1', '(?i)\bAV1\b', 'AV1 codec marker.'),
('RU LQ', '(?i)\bLQ\b', 'Low quality marker.'),
('RU Upscale', '(?i)\b(upscale|upscaled)\b', 'Upscale marker.'),
('RU AI Upscale', '(?i)\b(AI[\s._-]?upscale|AI[\s._-]?enhanced|hand[\s._-]?made[\s._-]?upscale[\s._-]?AI|AI)\b', 'AI upscale / AI enhanced markers.'),
('RU REMUX', '(?i)\bREMUX\b', 'REMUX marker.');

INSERT INTO tags (name) VALUES
('ru'),
('sdr'),
('codec'),
('source'),
('bitdepth'),
('reject'),
('hdr'),
('disc'),
('av1'),
('lq'),
('upscale'),
('ai'),
('remux')
ON CONFLICT(name) DO NOTHING;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES
('RU SDR', 'ru'),
('RU SDR', 'sdr'),

('RU HEVC', 'ru'),
('RU HEVC', 'codec'),

('RU WEB-DL', 'ru'),
('RU WEB-DL', 'source'),

('RU WEBRip', 'ru'),
('RU WEBRip', 'source'),

('RU BDRip', 'ru'),
('RU BDRip', 'source'),

('RU BluRay', 'ru'),
('RU BluRay', 'source'),

('RU 10bit', 'ru'),
('RU 10bit', 'bitdepth'),

('RU HDR DV HLG', 'ru'),
('RU HDR DV HLG', 'reject'),
('RU HDR DV HLG', 'hdr'),

('RU BR-DISK', 'ru'),
('RU BR-DISK', 'reject'),
('RU BR-DISK', 'disc'),

('RU AV1', 'ru'),
('RU AV1', 'reject'),
('RU AV1', 'av1'),

('RU LQ', 'ru'),
('RU LQ', 'reject'),
('RU LQ', 'lq'),

('RU Upscale', 'ru'),
('RU Upscale', 'reject'),
('RU Upscale', 'upscale'),

('RU AI Upscale', 'ru'),
('RU AI Upscale', 'reject'),
('RU AI Upscale', 'ai'),

('RU REMUX', 'ru'),
('RU REMUX', 'reject'),
('RU REMUX', 'remux');
