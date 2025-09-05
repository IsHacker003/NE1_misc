.class public Lcom/android/settings/datetime/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/ZonePicker$MyComparator;,
        Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1

    .line 75
    const v0, 0x7f0d007e    # @layout/date_time_custom_list_item_2 'res/layout/date_time_custom_list_item_2.xml'

    invoke-static {p0, p1, v0}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 8

    .line 86
    const-string v0, "display_label"

    const-string v1, "offset_label"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    .line 90
    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string p1, "display_label"

    goto :goto_0

    .line 94
    :cond_0
    const-string p1, "offset"

    .line 95
    :goto_0
    new-instance v0, Lcom/android/settings/datetime/ZonePicker$MyComparator;

    invoke-direct {v0, p1}, Lcom/android/settings/datetime/ZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZonesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 97
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    new-instance p1, Landroid/widget/SimpleAdapter;

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 103
    new-instance p0, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;-><init>(Lcom/android/settings/datetime/ZonePicker$1;)V

    invoke-virtual {p1, p0}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 104
    return-object p1

    nop

    :array_0
    .array-data 4
        0x1020014    # @android:id/text1
        0x1020015    # @android:id/text2
    .end array-data
.end method

.method public static getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 4

    .line 133
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v0

    .line 135
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 138
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    return v1

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static prepareCustomPreferencesList(Landroid/widget/ListView;)V
    .locals 1

    .line 226
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 229
    return-void
.end method

.method private setSorting(Z)V
    .locals 1

    .line 233
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 234
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/datetime/ZonePicker;->mSortedByTimezone:Z

    .line 236
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result p1

    .line 237
    if-ltz p1, :cond_1

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/ZonePicker;->setSelection(I)V

    .line 240
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 149
    const/16 v0, 0x203

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 157
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 158
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 161
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/ZonePicker;->setHasOptionsMenu(Z)V

    .line 163
    const v0, 0x7f1204e8    # @string/date_time_set_timezone 'Select time zone'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    new-instance p1, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getMetricsCategory()I

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object p1, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 171
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f121202    # @string/zone_list_menu_sort_alphabetically 'Sort alphabetically'

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 185
    const v2, 0x108009c    # @android:drawable/ic_menu_sort_alphabetically

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    const/4 v1, 0x2

    const v2, 0x7f121203    # @string/zone_list_menu_sort_by_timezone 'Sort by time zone'

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 187
    const v1, 0x7f08012e    # @drawable/ic_menu_3d_globe 'res/drawable-xhdpi/ic_menu_3d_globe.png'

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 188
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 177
    const p2, 0x102000a    # @android:id/list

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 178
    invoke-static {p2}, Lcom/android/settings/datetime/ZonePicker;->prepareCustomPreferencesList(Landroid/widget/ListView;)V

    .line 179
    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->isResumed()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 247
    const-string p2, "id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 251
    const-string p3, "alarm"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 252
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    .line 256
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 221
    return v0

    .line 213
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    .line 214
    return v1

    .line 217
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    .line 218
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 260
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    .line 262
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/datetime/ZonePicker;->mSortedByTimezone:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 206
    return-void
.end method
