# Generated by Django 3.1.3 on 2020-12-05 13:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("accounts", "0002_userinterest"),
    ]

    operations = [
        migrations.AddField(
            model_name="userprofile",
            name="interests",
            field=models.ManyToManyField(blank=True, to="accounts.UserInterest"),
        ),
    ]
