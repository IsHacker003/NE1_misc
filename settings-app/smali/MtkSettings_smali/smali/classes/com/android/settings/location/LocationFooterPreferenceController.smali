.class public Lcom/android/settings/location/LocationFooterPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "LocationFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;
    }
.end annotation


# static fields
.field private static final INJECT_INTENT:Landroid/content/Intent;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFooterInjectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.DISPLAYED_FOOTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationFooterPreferenceController;->INJECT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    .line 54
    iget-object p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 59
    :cond_0
    return-void
.end method

.method private getFooterData()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/location/LocationFooterPreferenceController;->INJECT_INTENT:Landroid/content/Intent;

    .line 149
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 151
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 152
    const-string v2, "LocationFooter"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const-string v0, "LocationFooter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/location/LocationFooterPreferenceController;->INJECT_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    const-string v2, "LocationFooter"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    const-string v2, "LocationFooter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found broadcast receivers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 162
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 163
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 166
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-nez v6, :cond_3

    .line 167
    const-string v6, "LocationFooter"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    const-string v4, "LocationFooter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring attempt to inject footer from app not in system image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto :goto_0

    .line 175
    :cond_3
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_4

    .line 176
    const-string v3, "LocationFooter"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    const-string v3, "LocationFooter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No METADATA in broadcast receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    goto :goto_0

    .line 182
    :cond_4
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.android.settings.location.FOOTER_STRING"

    .line 183
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 184
    if-nez v3, :cond_5

    .line 185
    const-string v3, "LocationFooter"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string v3, "LocationFooter"

    const-string v4, "No mapping of integer exists for com.android.settings.location.FOOTER_STRING"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_5
    new-instance v6, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v3, v5, v7}, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;-><init>(ILandroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    goto/16 :goto_0

    .line 199
    :cond_6
    return-object v2
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "location_footer"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/location/LocationFooterPreferenceController;->getFooterData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 126
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.location.REMOVED_FOOTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method sendBroadcastFooterDisplayed(Landroid/content/ComponentName;)V
    .locals 2

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.DISPLAYED_FOOTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    iget-object p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 73
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 74
    iget-object v1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/location/LocationFooterPreferenceController;->getFooterData()Ljava/util/Collection;

    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;

    .line 78
    new-instance v3, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 83
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->footerStringRes:I

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 94
    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 98
    iget-object v3, v2, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/settings/location/LocationFooterPreferenceController;->sendBroadcastFooterDisplayed(Landroid/content/ComponentName;)V

    .line 99
    iget-object v3, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    iget-object v2, v2, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->componentName:Landroid/content/ComponentName;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 86
    const-string v3, "LocationFooter"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string v3, "LocationFooter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resources not found for application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method
