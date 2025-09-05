.class public Lcom/android/settings/AllowBindAppWidgetActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AllowBindAppWidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBindOptions:Landroid/os/Bundle;

.field private mCallingPackage:Ljava/lang/String;

.field private mClicked:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mProfile:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 55
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mClicked:Z

    .line 56
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 57
    iget p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 59
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mBindOptions:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p2

    .line 61
    if-eqz p2, :cond_0

    .line 62
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    const-string p1, "BIND_APPWIDGET"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error binding widget with id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and component "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 72
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 74
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 92
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string v1, ""

    .line 96
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 98
    const/4 v1, -0x1

    :try_start_0
    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 99
    const-string v3, "appWidgetProviderProfile"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 101
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    if-nez v3, :cond_0

    .line 102
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 104
    :cond_0
    const-string v3, "appWidgetProvider"

    .line 105
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    .line 106
    const-string v3, "appWidgetOptions"

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mBindOptions:Landroid/os/Bundle;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 110
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 111
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 112
    :catch_0
    move-exception p1

    .line 113
    iput v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 114
    iput-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    .line 115
    iput-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    .line 116
    const-string p1, "BIND_APPWIDGET"

    const-string v0, "Error getting parameters"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 118
    return-void

    .line 121
    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 122
    const v3, 0x7f1200d3    # @string/allow_bind_app_widget_activity_allow_bind_title 'Create widget and allow access?'

    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 123
    const v3, 0x7f1200d2    # @string/allow_bind_app_widget_activity_allow_bind 'After you create the widget, %1$s can access all data it displays.'

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, p1

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 124
    const v3, 0x7f120419    # @string/create 'Create'

    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 125
    const/high16 v3, 0x1040000    # @android:string/cancel

    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 126
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    const-string v3, "layout_inflater"

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 130
    const v5, 0x1090032    # @android:layout/always_use_checkbox

    invoke-virtual {v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 131
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x10201a7    # @android:id/alwaysUse

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 132
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v2, 0x7f1200d4    # @string/allow_bind_app_widget_activity_always_allow_bind 'Always allow %1$s to create widgets and access their data'

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 135
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 136
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 137
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007d    # @dimen/bind_app_widget_dialog_checkbox_bottom_padding '16.0dp'

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 134
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 140
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 141
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 142
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setupAlert()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mClicked:Z

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 88
    return-void
.end method
