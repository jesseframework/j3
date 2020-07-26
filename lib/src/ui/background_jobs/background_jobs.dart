/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */


import 'package:flutter/material.dart';
import 'package:j3enterprise/src/resources/shared/icons/custom_icons.dart';
import 'package:j3enterprise/src/resources/shared/lang/appLocalization.dart';

import 'background_fetch_page.dart';
import 'backgroundjobs_pages.dart';

class SetupBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(CustomIcons.wrench_solid),
                text:
                    AppLocalization.of(context).translate('tab_app_servies') ??
                        'App Servies',
              ),
              Tab(
                icon: Icon(CustomIcons.cog_regular),
                text: AppLocalization.of(context)
                        .translate('tab_device_servies') ??
                    'Device Serives',
              )
            ],
          ),
          title: Text(
              AppLocalization.of(context).translate('title_background_jobs') ??
                  'Background Jobs'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Icon(Icons.cloud_download, size: 40, color: Colors.white),
                ],
              ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            //Tab 1
            BackgroundFetchPage(),
            //Tab 2
            BackgroundJobsPage()
          ],
        ),
      ),
    );
  }
}
