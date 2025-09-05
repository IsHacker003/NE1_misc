.class public Lcom/android/settings/AppWidgetLoader;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppWidgetLoader$ItemConstructor;,
        Lcom/android/settings/AppWidgetLoader$LabelledItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/android/settings/AppWidgetLoader$LabelledItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
            "TItem;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 49
    iput-object p3, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    .line 50
    return-void
.end method


# virtual methods
.method protected getItems(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 145
    const-string v0, "customSort"

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    const-string v3, "categoryFilter"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 154
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/AppWidgetLoader;->putInstalledAppWidgets(Ljava/util/List;I)V

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 160
    :cond_0
    new-instance v1, Lcom/android/settings/AppWidgetLoader$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AppWidgetLoader$1;-><init>(Lcom/android/settings/AppWidgetLoader;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    if-nez v0, :cond_1

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 170
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_1
    return-object v2
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "TItem;>;IZ)V"
        }
    .end annotation

    .line 117
    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 119
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 123
    if-nez p5, :cond_1

    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v3, p4

    if-nez v3, :cond_1

    .line 124
    goto :goto_2

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    iget-object v4, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    .line 128
    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 127
    :goto_1
    invoke-interface {v3, v4, v2, v5}, Lcom/android/settings/AppWidgetLoader$ItemConstructor;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/AppWidgetLoader$LabelledItem;

    .line 130
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_3
    return-void
.end method

.method putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 58
    nop

    .line 59
    nop

    .line 61
    const-string v0, "customInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 68
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 70
    if-eqz v5, :cond_2

    instance-of v5, v5, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v5, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    nop

    .line 72
    const-string p2, "AppWidgetAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    nop

    .line 106
    :goto_2
    move-object v4, v1

    move-object v5, v4

    goto/16 :goto_6

    .line 77
    :cond_3
    const-string v4, "customExtras"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 78
    if-nez p2, :cond_4

    .line 79
    nop

    .line 80
    const-string v0, "AppWidgetAdapter"

    const-string v2, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    nop

    .line 106
    move-object v5, p2

    move-object v4, v1

    goto :goto_6

    .line 84
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 85
    if-eq v2, v4, :cond_5

    .line 86
    nop

    .line 87
    nop

    .line 88
    const-string p2, "AppWidgetAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_2

    .line 94
    :cond_5
    :goto_3
    if-ge v3, v4, :cond_8

    .line 95
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 96
    if-eqz v2, :cond_7

    instance-of v2, v2, Landroid/os/Bundle;

    if-nez v2, :cond_6

    goto :goto_4

    .line 94
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 97
    :cond_7
    :goto_4
    nop

    .line 98
    nop

    .line 99
    const-string p2, "AppWidgetAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_2

    .line 106
    :cond_8
    move-object v5, p2

    move-object v4, v0

    goto :goto_6

    .line 63
    :cond_9
    :goto_5
    const-string p2, "AppWidgetAdapter"

    const-string v2, "EXTRA_CUSTOM_INFO not present."

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    nop

    .line 106
    move-object v4, v0

    move-object v5, v1

    :goto_6
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 107
    return-void
.end method

.method putInstalledAppWidgets(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;I)V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 180
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v2

    .line 181
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 182
    return-void
.end method
