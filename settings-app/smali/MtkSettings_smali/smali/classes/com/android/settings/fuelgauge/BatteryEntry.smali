.class public Lcom/android/settings/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;
    }
.end annotation


# static fields
.field static final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sCurrentLocale:Ljava/util/Locale;

.field static sHandler:Landroid/os/Handler;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;

.field public final sipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sput-object p2, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    .line 140
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    .line 141
    sget-object p2, Lcom/android/settings/fuelgauge/BatteryEntry$1;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v0, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const v0, 0x7f08016a    # @drawable/ic_settings_display 'res/drawable/ic_settings_display.xml'

    const v1, 0x7f080150    # @drawable/ic_power_system 'res/drawable-xhdpi/ic_power_system.png'

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 213
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1200e5    # @string/ambient_display_screen_title 'Ambient display'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 214
    const p2, 0x7f08015d    # @drawable/ic_settings_aod 'res/drawable/ic_settings_aod.xml'

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_2

    .line 209
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a33    # @string/power_camera 'Camera'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 210
    const p2, 0x7f080164    # @drawable/ic_settings_camera 'res/drawable/ic_settings_camera.xml'

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 211
    goto/16 :goto_2

    .line 205
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a42    # @string/power_overcounted 'Over-counted'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 206
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 207
    goto/16 :goto_2

    .line 201
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a53    # @string/power_unaccounted 'Miscellaneous'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 202
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 203
    goto/16 :goto_2

    .line 190
    :pswitch_4
    iget p2, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 191
    if-eqz p2, :cond_0

    .line 192
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120b68    # @string/running_process_item_removed_user_label 'Removed user'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 199
    :goto_0
    goto/16 :goto_2

    .line 171
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 172
    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 174
    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 179
    :try_start_0
    iget-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 180
    invoke-virtual {p2, p3, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 181
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto/16 :goto_2

    .line 182
    :catch_0
    move-exception p2

    .line 183
    const-string p2, "BatteryEntry"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 188
    goto/16 :goto_2

    .line 175
    :cond_2
    :goto_1
    iget-object p2, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 167
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a3f    # @string/power_flashlight 'Flashlight'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 168
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 169
    goto :goto_2

    .line 163
    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a52    # @string/power_screen 'Screen'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 164
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 165
    goto :goto_2

    .line 159
    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a32    # @string/power_bluetooth 'Bluetooth'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 160
    const p2, 0x7f080163    # @drawable/ic_settings_bluetooth 'res/drawable/ic_settings_bluetooth.xml'

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 161
    goto :goto_2

    .line 155
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a5b    # @string/power_wifi 'Wi‑Fi'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 156
    const p2, 0x7f08017f    # @drawable/ic_settings_wireless 'res/drawable/ic_settings_wireless.xml'

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 157
    goto :goto_2

    .line 151
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a43    # @string/power_phone 'Voice calls'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 152
    const p2, 0x7f08017d    # @drawable/ic_settings_voice_calls 'res/drawable-xhdpi/ic_settings_voice_calls.png'

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 153
    goto :goto_2

    .line 147
    :pswitch_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a34    # @string/power_cell 'Mobile network standby'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 148
    const p2, 0x7f080165    # @drawable/ic_settings_cell_standby 'res/drawable-xhdpi/ic_settings_cell_standby.png'

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 149
    goto :goto_2

    .line 143
    :pswitch_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a41    # @string/power_idle 'Phone idle'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 144
    const p2, 0x7f080175    # @drawable/ic_settings_phone_idle 'res/drawable-xhdpi/ic_settings_phone_idle.png'

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 145
    nop

    .line 217
    :goto_2
    iget p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-lez p2, :cond_3

    .line 218
    iget p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz p1, :cond_5

    .line 221
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getQuickNameIconForUid(I)V

    .line 223
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clearUidCache()V
    .locals 1

    .line 120
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 121
    return-void
.end method

.method public static startRequestQueue()V
    .locals 3

    .line 94
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 100
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 101
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    .line 102
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    .line 103
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 105
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_2
    :goto_0
    return-void
.end method

.method public static stopRequestQueue()V
    .locals 2

    .line 110
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 113
    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 114
    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 116
    :cond_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method extractPackagesFromSipper(Lcom/android/internal/os/BatterySipper;)[Ljava/lang/String;
    .locals 2

    .line 373
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 374
    const-string p1, "android"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 373
    :goto_0
    return-object p1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method getQuickNameIconForUid(I)V
    .locals 2

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    .line 240
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 241
    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 244
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    sget-object p1, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    .line 247
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 249
    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 250
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 254
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 255
    if-nez p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120a9a    # @string/process_kernel_label 'Android OS'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_2
    const-string p1, "mediaserver"

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 258
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120a9b    # @string/process_mediaserver_label 'Mediaserver'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_3
    const-string p1, "dex2oat"

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 260
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120a98    # @string/process_dex2oat_label 'App optimization'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 262
    :cond_4
    :goto_0
    const p1, 0x7f080150    # @drawable/ic_power_system 'res/drawable-xhdpi/ic_power_system.png'

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 263
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_5
    sget-object p1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    .line 267
    sget-object p1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter p1

    .line 268
    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 271
    :cond_6
    :goto_1
    return-void
.end method

.method public loadNameAndIcon()V
    .locals 14

    .line 278
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryEntry;->extractPackagesFromSipper(Lcom/android/internal/os/BatterySipper;)[Ljava/lang/String;

    move-result-object v2

    .line 289
    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 290
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 291
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 295
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 296
    move v8, v6

    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_5

    .line 298
    :try_start_0
    aget-object v9, v4, v8

    invoke-interface {v5, v9, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 300
    if-nez v9, :cond_2

    .line 301
    const-string v9, "BatteryEntry"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retrieving null app info for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v4, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 306
    if-eqz v10, :cond_3

    .line 307
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    .line 309
    :cond_3
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v10, :cond_4

    .line 310
    aget-object v10, v2, v8

    iput-object v10, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 311
    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_2

    .line 317
    :cond_4
    goto :goto_1

    .line 314
    :catch_0
    move-exception v9

    .line 315
    const-string v10, "BatteryEntry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while retrieving app info for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 320
    :cond_5
    :goto_2
    array-length v8, v4

    if-ne v8, v3, :cond_6

    .line 321
    aget-object v2, v4, v6

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_5

    .line 324
    :cond_6
    array-length v4, v2

    move v8, v6

    :goto_3
    if-ge v8, v4, :cond_a

    aget-object v9, v2, v8

    .line 326
    :try_start_1
    invoke-interface {v5, v9, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 327
    if-nez v10, :cond_7

    .line 328
    const-string v10, "BatteryEntry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Retrieving null package info for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    goto :goto_4

    .line 332
    :cond_7
    iget v11, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v11, :cond_9

    .line 333
    iget v11, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v9, v11, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 335
    if-eqz v11, :cond_9

    .line 336
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 337
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v11, :cond_8

    .line 338
    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 339
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :cond_8
    goto :goto_5

    .line 347
    :cond_9
    goto :goto_4

    .line 344
    :catch_1
    move-exception v10

    .line 345
    const-string v11, "BatteryEntry"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while retrieving package info for package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", user "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 352
    :cond_a
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 354
    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 357
    :cond_b
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_c

    .line 358
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 361
    :cond_c
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 362
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 364
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 365
    sget-object v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 367
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    :cond_d
    return-void
.end method
