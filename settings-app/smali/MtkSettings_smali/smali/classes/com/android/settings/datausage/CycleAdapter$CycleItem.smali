.class public Lcom/android/settings/datausage/CycleAdapter$CycleItem;
.super Ljava/lang/Object;
.source "CycleAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field public end:J

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    .line 166
    iput-wide p2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    .line 167
    iput-wide p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    .line 168
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 4

    .line 186
    iget-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v2, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 155
    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 177
    instance-of v0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 178
    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 179
    iget-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    iget-wide v4, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 181
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
