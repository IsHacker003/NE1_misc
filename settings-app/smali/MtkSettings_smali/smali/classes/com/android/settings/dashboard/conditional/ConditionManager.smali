.class public Lcom/android/settings/dashboard/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;,
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    }
.end annotation


# static fields
.field private static final CONDITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 303
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    .line 65
    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 66
    const-string p2, "ConditionManager"

    const-string v1, "conditions loading synchronously"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$1;)V

    .line 68
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string p2, "ConditionManager"

    const-string v1, "conditions loading asychronously"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$1;)V

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/conditional/ConditionManager;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addMissingConditions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object p1

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    return-void
.end method

.method private addMissingConditions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 152
    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 153
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 154
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 155
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 156
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 157
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 158
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 159
    const-class v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 160
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 161
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 162
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    return-void
.end method

.method private createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/dashboard/conditional/Condition;"
        }
    .end annotation

    .line 176
    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    if-ne v0, p1, :cond_0

    .line 177
    new-instance p1, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 178
    :cond_0
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    if-ne v0, p1, :cond_1

    .line 179
    new-instance p1, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 180
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    if-ne v0, p1, :cond_2

    .line 181
    new-instance p1, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/DndCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 182
    :cond_2
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    if-ne v0, p1, :cond_3

    .line 183
    new-instance p1, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 184
    :cond_3
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    if-ne v0, p1, :cond_4

    .line 185
    new-instance p1, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 186
    :cond_4
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    if-ne v0, p1, :cond_5

    .line 187
    new-instance p1, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 188
    :cond_5
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    if-ne v0, p1, :cond_6

    .line 189
    new-instance p1, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 190
    :cond_6
    const-class v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    if-ne v0, p1, :cond_7

    .line 191
    new-instance p1, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 192
    :cond_7
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    if-ne v0, p1, :cond_8

    .line 193
    new-instance p1, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 194
    :cond_8
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    if-ne v0, p1, :cond_9

    .line 195
    new-instance p1, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    invoke-direct {p1, p0}, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object p1

    .line 197
    :cond_9
    const-string v0, "ConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown condition class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 p1, 0x0

    return-object p1
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 1

    .line 289
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 1

    .line 293
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 296
    :cond_0
    sget-object p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    return-object p0
.end method

.method private getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)TT;"
        }
    .end annotation

    .line 210
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 212
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/conditional/Condition;

    return-object p1

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 90
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 91
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 93
    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    .line 94
    const-string p1, "c"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    .line 96
    const-string v2, ""

    const-string v3, "cls"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, "com.android.settings.dashboard.conditional."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.settings.dashboard.conditional."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v3

    .line 101
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 103
    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    .line 105
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_1
    const-string v3, "ConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to add condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p1, :cond_2

    .line 110
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_2

    .line 116
    :catch_0
    move-exception p1

    .line 117
    const-string p2, "ConditionManager"

    const-string v0, "Problem reading condition_state.xml"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_2
    return-void
.end method

.method private saveToXml()V
    .locals 8

    .line 124
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 126
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 128
    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 129
    const-string v2, ""

    const-string v3, "cs"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 132
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 133
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 134
    iget-object v5, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5, v4}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const-string v5, ""

    const-string v6, "c"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    iget-object v5, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 137
    const-string v6, ""

    const-string v7, "cls"

    invoke-interface {v0, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 139
    const-string v4, ""

    const-string v5, "c"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const-string v2, ""

    const-string v3, "cs"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 145
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "ConditionManager"

    const-string v2, "Problem writing condition_state.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 246
    return-void
.end method

.method public getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object p1

    return-object p1
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V
    .locals 2

    .line 235
    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->saveToXml()V

    .line 236
    iget-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    iget-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 238
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    invoke-interface {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->onPause()V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->onResume()V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public refreshAll()V
    .locals 4

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 80
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/Condition;->refreshState()V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method
