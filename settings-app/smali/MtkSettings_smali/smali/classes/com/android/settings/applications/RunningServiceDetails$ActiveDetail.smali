.class Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mInstaller:Landroid/content/ComponentName;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 119
    new-instance p1, Landroid/app/ApplicationErrorReport;

    invoke-direct {p1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 120
    const/4 v0, 0x5

    iput v0, p1, Landroid/app/ApplicationErrorReport;->type:I

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ApplicationErrorReport;->time:J

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 127
    new-instance v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 129
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v3, v3, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v5, v5, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto :goto_1

    .line 132
    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 134
    :goto_1
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "service_dump.txt"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 137
    nop

    .line 139
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    const-string v7, "activity"

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "-a"

    aput-object v10, v9, v1

    const-string v1, "service"

    aput-object v1, v9, v2

    const/4 v1, 0x2

    .line 141
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 140
    invoke-static {v7, v8, v9}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 145
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_4

    .line 142
    :catch_1
    move-exception v1

    goto :goto_3

    .line 145
    :catchall_0
    move-exception p1

    move-object v6, v5

    goto/16 :goto_9

    .line 142
    :catch_2
    move-exception v1

    move-object v6, v5

    .line 143
    :goto_3
    :try_start_3
    const-string v2, "RunningServicesDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t dump service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 145
    if-eqz v6, :cond_2

    goto :goto_2

    .line 147
    :cond_2
    :goto_4
    nop

    .line 149
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 150
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v2, v5

    new-array v2, v2, [B

    .line 151
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 152
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v5, v1

    goto :goto_7

    .line 153
    :catch_4
    move-exception v2

    move-object v5, v1

    goto :goto_5

    .line 156
    :catchall_2
    move-exception p1

    goto :goto_7

    .line 153
    :catch_5
    move-exception v2

    .line 154
    :goto_5
    :try_start_7
    const-string v1, "RunningServicesDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read service dump: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 156
    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 158
    :cond_3
    :goto_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 159
    const-string v1, "RunningServicesDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 163
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void

    .line 156
    :goto_7
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    :cond_4
    :goto_8
    throw p1

    .line 145
    :catchall_3
    move-exception p1

    :goto_9
    if-eqz v6, :cond_5

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    :cond_5
    :goto_a
    throw p1

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_7

    .line 171
    :try_start_b
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10080000

    const/high16 v4, 0x80000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_b

    .line 179
    :catch_8
    move-exception p1

    .line 180
    const-string v0, "RunningServicesDetails"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 177
    :catch_9
    move-exception p1

    .line 178
    const-string v0, "RunningServicesDetails"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 175
    :catch_a
    move-exception p1

    .line 176
    const-string v0, "RunningServicesDetails"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :goto_b
    goto :goto_c

    .line 182
    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz p1, :cond_8

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto :goto_c

    .line 184
    :cond_8
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean p1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz p1, :cond_9

    .line 186
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_c

    .line 190
    :cond_9
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 193
    :goto_c
    return-void
.end method

.method stopActiveService(Z)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 96
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->access$000(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 103
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 106
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-boolean p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 111
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 115
    :goto_0
    return-void
.end method
