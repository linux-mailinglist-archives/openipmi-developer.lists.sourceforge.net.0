Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AF0A6FD00
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Mar 2025 13:40:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tx3ZY-0001xr-Uj;
	Tue, 25 Mar 2025 12:40:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1tx3ZP-0001xa-Mt
 for openipmi-developer@lists.sourceforge.net;
 Tue, 25 Mar 2025 12:39:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wKjgWB6TvzIdAsr3S3K/HK4ewyUzjCEe3m57z5Zfxsw=; b=m1kRIldGIrRq/2mxXn4bXD+7cJ
 Zhi0/PO219yL1LG+nu0uv0JoJlGzpd7M/gsSh3LjwKobDH7wu1jXaN5ZlIo/0UZiv6JPvI/Bn/noQ
 x9uJcr8PEeLXhu4vyOSzlebDHOXSzinQa0n/Z2TADCpLwPemrk8SAYi0UnXi3pmh5/Ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wKjgWB6TvzIdAsr3S3K/HK4ewyUzjCEe3m57z5Zfxsw=; b=cSSlm+5D2g8JFdOLGHhIRozIkX
 dIVQQ+sZsuYFPixXNrqYSYXVPjacB1ecsrgdkF06ZeaXoX4tnTGI+9Bn9K6TJ/xcuvg948435dhNt
 PIrFqkKT9TA9QAdEUtH0uk2oCmPdblsysS3cRIaHnpNXrvqaejSlyj3dMlyStuKkCEtc=;
Received: from mail-ed1-f49.google.com ([209.85.208.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tx3ZG-0002sA-G2 for openipmi-developer@lists.sourceforge.net;
 Tue, 25 Mar 2025 12:39:48 +0000
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-5eb5ecf3217so9900616a12.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 25 Mar 2025 05:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742906376; x=1743511176; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wKjgWB6TvzIdAsr3S3K/HK4ewyUzjCEe3m57z5Zfxsw=;
 b=lzrFmesmlLjF4nf22YL70ZWDvJPg6NHWLC027m7tV20ul1Iyq6ErLcnCjkLaSJBRb3
 61Fran+8Pp5eFMfUoroKMSDcWh/1hGBlplU/BZVD/LBrXK2X6B/vXNVcr1LH+CXEmx1S
 iOAkh/Pgz/74cdHXhoSW8adlC1NTQnFwTz+HpUcWV9luzIuO0hOmu7OL6qRhdERLjubk
 wcPvH6JqMCtrOz0o+6Xt9ioOIOw7zwyQSWajyv4FoHS8WJXCjZIiTezOk6r76mWlN4XQ
 c7O9Uvcs4h+rIzdtEOBqVLDkZZ+96tYPyCsPnVWP9R3FDIampQGM3uSnUbzMX/ULf6a8
 g25A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742906376; x=1743511176;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wKjgWB6TvzIdAsr3S3K/HK4ewyUzjCEe3m57z5Zfxsw=;
 b=wBZclEdol5C4sGizzDQ4dsZKFvryFrbvwWuPMssPbLSMokWMojnwC7OzRufPN0g08L
 TfLIRDqvlbHUPvxtRsQYSIAtUzfutkXRpM/SP/fUnuWuC59jWT2G6tNgi9a+wluhgBF8
 rkuWRpbgahEBwP1rY3M8W80f6RADriNNQIF/Uqs+FcwL1TbsFi87Jhyzqme3fzoykJSP
 sR4FhmaEmpZQCuoyTTHvTwGmZFB81Hbm3BipKEwPzZnO69KCywud7gFRL7KP3pdYcGlU
 F2UiEQxhzgxqxQ1yr7c6kT8IpUgXIRcU9CVC9P4sI66O740KAxJ+s+m+AKRhX8Cow+60
 ll3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXhJ2vHEyW8o4IWqL4m6rgBo4UGKcxJ4a47Uuzg3gMr9gWlMJF8PJ9DxTzwR5da+jMm3VxhbLJVwhhIUph2YDB/SOs=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxu40H9cAT0JJ1OwZKRdU6sdcmyjI68/dX+nV5qFiZGpkDsNwzo
 LZU94IC87R4fy0rwurXizMYnfl/xOoVYxOkBynzwXq6hEV5+WNFOCp9CFszwW8pzr9VGKIOjkVz
 0+sCPAjAPd+R0CK4yhq2SoAHbFfA=
X-Gm-Gg: ASbGnctreoMFzGMVmYZnQ0ovyjcyC56afIJVXeiW6DtvFBBDSicSWuLjtWZ/lRQFijr
 a3w7zj9KtJONC68vTGjb/iTF9S7FBlXlMeolSYOQkVQV+H22aao/XCKPaIzsXdl8/cuzaxYtykT
 2CeeY8YmaJHdfndoBwoQgcf3Jk
X-Google-Smtp-Source: AGHT+IGdupF01QlyFQSqXrPSXzIUWzzNYHBlBz9FvwrkTYFKD0ac363zKdJELEcVjUiNULjUAeCN3qPL8zhTgvLGEPU=
X-Received: by 2002:a05:6402:84f:b0:5ea:b406:4617 with SMTP id
 4fb4d7f45d1cf-5ebcd42e5bbmr16537562a12.13.1742906375459; Tue, 25 Mar 2025
 05:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <b0ac8b81fbb8955ed8ada27aba423cff45aad9f6.1735550269.git.zhoubinbin@loongson.cn>
 <f365c722-c294-4834-8c84-fd6dcd4a9ee9@suse.de>
 <CAMpQs4JXKu4GDD79Mdkq9vASSDE_5SQsjsg4htfaZ5yGm3=k5g@mail.gmail.com>
In-Reply-To: <CAMpQs4JXKu4GDD79Mdkq9vASSDE_5SQsjsg4htfaZ5yGm3=k5g@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 25 Mar 2025 20:39:22 +0800
X-Gm-Features: AQ5f1Jrbk_EFMADnaFY725mw-u4J_gY-MBHc_ta67hZ-stRVovQuuFCq39O9Dms
Message-ID: <CAMpQs4JJQpW7cjKDOGjBg2gQ=8r-nYMXtE2_YddmHcsbd9agVA@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Feb 11, 2025 at 7:27 PM Binbin Zhou wrote: > > Hi
    Thomas: > > Sorry for my late reply and thanks for your advice. > > On Wed,
    Jan 15, 2025 at 2:57 PM Thomas Zimmermann wrote: > > > > H [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.208.49 listed in sa-trusted.bondedsender.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.49 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.49 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1tx3ZG-0002sA-G2
Subject: Re: [Openipmi-developer] [PATCH v1 4/4] drm/ls2kbmc: Add
 Loongson-2K BMC reset function support
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Simona Vetter <simona@ffwll.ch>, Chong Qiao <qiaochong@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, Lee Jones <lee@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, loongarch@lists.linux.dev,
 openipmi-developer@lists.sourceforge.net, David Airlie <airlied@gmail.com>,
 Xuerui Wang <kernel@xen0n.name>, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBGZWIgMTEsIDIwMjUgYXQgNzoyN+KAr1BNIEJpbmJpbiBaaG91IDx6aG91YmIuYWFy
b25AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIFRob21hczoKPgo+IFNvcnJ5IGZvciBteSBsYXRl
IHJlcGx5IGFuZCB0aGFua3MgZm9yIHlvdXIgYWR2aWNlLgo+Cj4gT24gV2VkLCBKYW4gMTUsIDIw
MjUgYXQgMjo1N+KAr1BNIFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiB3
cm90ZToKPiA+Cj4gPiBIaQo+ID4KPiA+Cj4gPiBBbSAzMC4xMi4yNCB1bSAxMDozMSBzY2hyaWVi
IEJpbmJpbiBaaG91Ogo+ID4gPiBTaW5jZSB0aGUgZGlzcGxheSBpcyBhIHN1Yi1mdW5jdGlvbiBv
ZiB0aGUgTG9vbmdzb24tMksgQk1DLCB3aGVuIHRoZQo+ID4gPiBCTUMgcmVzZXQsIHRoZSBlbnRp
cmUgQk1DIFBDSWUgaXMgZGlzY29ubmVjdGVkLCBpbmNsdWRpbmcgdGhlIGRpc3BsYXkKPiA+ID4g
d2hpY2ggaXMgaW50ZXJydXB0ZWQuCj4gPgo+ID4gVG8gbWUsIHRoYXQncyBhIHN0cm9uZyBpbmRp
Y2F0b3IgdG8gc2V0IHVwIHRoZSBlbnRpcmUgdGhpbmcgZnJvbSBzY3JhdGNoLgo+ID4KPiA+ID4K
PiA+ID4gTm90IG9ubHkgZG8geW91IG5lZWQgdG8gc2F2ZS9yZXN0b3JlIHRoZSByZWxldmFudCBQ
Q0llIHJlZ2lzdGVycwo+ID4gPiB0aHJvdWdob3V0IHRoZSByZXNldCBwcm9jZXNzLCBidXQgeW91
IGFsc28gbmVlZCB0byByZS1wdXNoIHRoZSBkaXNwbGF5Cj4gPiA+IHRvIHRoZSBtb25pdG9yIGF0
IHRoZSBlbmQuCj4gPiA+Cj4gPiA+IENvLWRldmVsb3BlZC1ieTogQ2hvbmcgUWlhbyA8cWlhb2No
b25nQGxvb25nc29uLmNuPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaG9uZyBRaWFvIDxxaWFvY2hv
bmdAbG9vbmdzb24uY24+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEJpbmJpbiBaaG91IDx6aG91Ymlu
YmluQGxvb25nc29uLmNuPgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vdGlueS9s
czJrYm1jLmMgfCAyODQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDI4MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+Cj4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9sczJrYm1jLmMgYi9kcml2ZXJz
L2dwdS9kcm0vdGlueS9sczJrYm1jLmMKPiA+ID4gaW5kZXggOTA5ZDZjNjg3MTkzLi40YjQ0MGYy
MGNiNGQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2xzMmtibWMuYwo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9sczJrYm1jLmMKPiA+Cj4gPiBNb3ZlIGFs
bCB0aGUgcmVzZXQgZGV0ZWN0aW9uIGludG8gdGhlIEJNQyBjb3JlIGRyaXZlci4gV2hlbiB5b3Ug
c2VlIGEKPiA+IHJlc2V0LCByZW1vdmUgdGhlIGRpc3BsYXkncyBwbGF0Zm9ybSBkZXZpY2Ugdmlh
Cj4gPiBwbGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcigpLiBUaGlzIHdpbGwgcmVsZWFzZSB0aGUg
ZGV2aWNlICBhbmQgdGhlIERSTQo+ID4gZHJpdmVyIG9uIHRvcC4gV2UgZG8gdGhpcyBmb3Igc2lt
cGxlZHJtL2VmaWZiL2V0Yy4gSGVuY2UgdXNlci1zcGFjZSBjb2RlCj4gPiBpcyBhYmxlIHRvIGRl
YWwgd2l0aCBpdC4gVGhlbiBzZXQgdXAgYSBuZXcgcGxhdGZvcm0gZGV2aWNlIHdoZW4gdGhlIG5l
dwo+ID4gZnJhbWVidWZmZXIgaXMgYXZhaWxhYmxlLiBZb3VyIERSTSBkcml2ZXIgd2lsbCBiaW5k
IHRvIGl0IGFuZCB1c2VyLXNwYWNlCj4gPiBjb2RlIHdpbGwgY29udGludWUgd2l0aCB0aGUgbmV3
IERSTSBkZXZpY2UuCj4KPiBJIHRyaWVkIHRvIHJlZmFjdG9yIHRoZSBibWMgcmVzdGFydCBwYXJ0
IGFjY29yZGluZyB0byB5b3VyIHNjaGVtZS4gSSdtCj4gbm90IHF1aXRlIHN1cmUgaWYgdGhlIGV4
cGVyaW1lbnRhbCByZXN1bHRzIGFyZSBleGFjdGx5IHJpZ2h0Lgo+Cj4gS2V5IHBhcnQ6Cj4KPiBO
ZXcgc29sdXRpb246Cj4gMS4gcGxhdGZvcm1fZGV2aWNlX3VucmVnaXN0ZXIoc2ltcGxlZHJtKQo+
IDIuIHdhaXQgYW5kIGRldGVjdCBpZiB0aGUgQk1DIHJlYm9vdCBpcyBjb21wbGV0ZTsKPiAzLiBw
bGF0Zm9ybV9kZXZpY2VfcmVnaXN0ZXJfcmVzbmRhdGEoc2ltcGxlZHJtKQo+Cj4gT3JpZ2luYWwg
c29sdXRpb246Cj4gMS4gd2FpdCBhbmQgZGV0ZWN0IGlmIHRoZSBCTUMgcmVib290IGlzIGNvbXBs
ZXRlOwo+IDIuIGxzMmtibWNfcHVzaF9kcm1fbW9kZSgpIHB1c2hlcyBkaXNwbGF5IGRhdGEgc3Vj
aCBhcyBjcnRjLgo+Cj4gV2hlbiB0aGUgQk1DIHJlYm9vdCBpcyBjb21wbGV0ZWQsIHRoZSBkaXNw
bGF5IGluIHRoZSBuZXcgc29sdXRpb24gd2lsbAo+IGxvc2UgYWxsIHRoZSBpbmZvcm1hdGlvbiBv
ZiB0aGUgcHJldmlvdXMgZGVza3RvcCBhbmQgcmVkaXNwbGF5IHRoZQo+IHN5c3RlbSBsb2dpbiBp
bnRlcmZhY2UsIHdoaWxlIHRoZSBvcmlnaW5hbCBzb2x1dGlvbiB3aWxsIGtlZXAgdGhlCj4gZGVz
a3RvcCBpbmZvcm1hdGlvbi4KPgo+IElzIHRoaXMgbm9ybWFsIGZvciBvdXIgbmV3IHNvbHV0aW9u
LCBvciBpcyB0aGVyZSBzb21ldGhpbmcgd3Jvbmcgd2l0aAo+IG15IGltcGxlbWVudGF0aW9uPwoK
SGkgVGhvbWFzOgoKU29ycnkgdG8gYm90aGVyIHlvdSBhbmQgbXkgbGFzdCBlbWFpbFsxXSBtYXkg
aGF2ZSBiZWVuIGxvc3QuClNvbWUgdGltZSBhZ28sIEkgbW9kaWZpZWQgdGhlIGNvZGUgYW5kIHRl
c3RlZCBpdCBiYXNlZCBvbiB5b3VyCnByZXZpb3VzIGNvbW1lbnRzLCBidXQgdGhlIHJlc3VsdHMg
d2VyZSBhIGJpdCBkaWZmZXJlbnQgdGhhbiBleHBlY3RlZC4KCkknbSBub3Qgc3VyZSBpZiB0aGUg
Y29kZSBjaGFuZ2VzIGFyZSB3cm9uZywgc28gaXQgd291bGQgYmUgZ3JlYXQgaWYKeW91IGNvdWxk
IHRha2UgdGhlIHRpbWUgdG8gaGVscCBtZSBvdXQ6CgpbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC9DQU1wUXM0SlhLdTRHREQ3OU1ka3E5dkFTU0RFXzVTUXNqc2c0aHRmYVo1eUdtMz1r
NWdAbWFpbC5nbWFpbC5jb20vCj4KPiA+Cj4gPiBCZXN0IHJlZ2FyZHMKPiA+IFRob21hcwo+ID4K
PiA+ID4gQEAgLTgsMTAgKzgsMTIgQEAKPiA+ID4gICAgKi8KPiA+ID4KPiA+ID4gICAjaW5jbHVk
ZSA8bGludXgvYXBlcnR1cmUuaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ID4g
PiAgICNpbmNsdWRlIDxsaW51eC9taW5tYXguaD4KPiA+ID4gICAjaW5jbHVkZSA8bGludXgvcGNp
Lmg+Cj4gPiA+ICAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RhdGEvc2ltcGxlZmIuaD4KPiA+
ID4gICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gPiA+ICsjaW5jbHVkZSA8
bGludXgvc3RvcF9tYWNoaW5lLmg+Cj4gPiA+Cj4gPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRv
bWljLmg+Cj4gPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX3N0YXRlX2hlbHBlci5oPgo+
ID4gPiBAQCAtMzIsOSArMzQsMjcgQEAKPiA+ID4gICAjaW5jbHVkZSA8ZHJtL2RybV9wYW5pYy5o
Pgo+ID4gPiAgICNpbmNsdWRlIDxkcm0vZHJtX3Byb2JlX2hlbHBlci5oPgo+ID4gPgo+ID4gPiAr
I2RlZmluZSBCTUNfUkVTRVRfREVMQVkgICAgICAoNjAgKiBIWikKPiA+ID4gKyNkZWZpbmUgQk1D
X1JFU0VUX1dBSVQgICAgICAgMTAwMDAKPiA+ID4gKwo+ID4gPiArc3RhdGljIGNvbnN0IHUzMiBp
bmRleFtdID0geyAweDQsIDB4MTAsIDB4MTQsIDB4MTgsIDB4MWMsIDB4MjAsIDB4MjQsCj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MzAsIDB4M2MsIDB4NTQsIDB4NTgsIDB4Nzgs
IDB4N2MsIDB4ODAgfTsKPiA+ID4gK3N0YXRpYyBjb25zdCB1MzIgY2luZGV4W10gPSB7IDB4NCwg
MHgxMCwgMHgzYyB9Owo+ID4gPiArCj4gPiA+ICtzdHJ1Y3QgbHMya2JtY19wY2lfZGF0YSB7Cj4g
PiA+ICsgICAgIHUzMiBkODBjOwo+ID4gPiArICAgICB1MzIgZDcxYzsKPiA+ID4gKyAgICAgdTMy
IGRhdGFbMTRdOwo+ID4gPiArICAgICB1MzIgY2RhdGFbM107Cj4gPiA+ICt9Owo+ID4gPiArCj4g
PiA+ICAgc3RydWN0IGxzMmtibWNfcGRhdGEgewo+ID4gPiAgICAgICBzdHJ1Y3QgcGNpX2RldiAq
cGRldjsKPiA+ID4gKyAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRkZXY7Cj4gPiA+ICsgICAgIHN0
cnVjdCB3b3JrX3N0cnVjdCBibWNfd29yazsKPiA+ID4gKyAgICAgdW5zaWduZWQgbG9uZyByZXNl
dF90aW1lOwo+ID4gPiAgICAgICBzdHJ1Y3Qgc2ltcGxlZmJfcGxhdGZvcm1fZGF0YSBwZDsKPiA+
ID4gKyAgICAgc3RydWN0IGxzMmtibWNfcGNpX2RhdGEgcGNpX2RhdGE7Cj4gPiA+ICAgfTsKPiA+
ID4KPiA+ID4gICAvKgo+ID4gPiBAQCAtNTgzLDYgKzYwMywyNjUgQEAgc3RhdGljIHN0cnVjdCBs
czJrYm1jX2RldmljZSAqbHMya2JtY19kZXZpY2VfY3JlYXRlKHN0cnVjdCBkcm1fZHJpdmVyICpk
cnYsCj4gPiA+ICAgICAgIHJldHVybiBzZGV2Owo+ID4gPiAgIH0KPiA+ID4KPiA+ID4gK3N0YXRp
YyBib29sIGxzMmtibWNfYmFyMF9hZGRyX2lzX3NldChzdHJ1Y3QgcGNpX2RldiAqcHBkZXYpCj4g
PiA+ICt7Cj4gPiA+ICsgICAgIHUzMiBhZGRyOwo+ID4gPiArCj4gPiA+ICsgICAgIHBjaV9yZWFk
X2NvbmZpZ19kd29yZChwcGRldiwgUENJX0JBU0VfQUREUkVTU18wLCAmYWRkcik7Cj4gPiA+ICsg
ICAgIGFkZHIgJj0gUENJX0JBU0VfQUREUkVTU19NRU1fTUFTSzsKPiA+ID4gKwo+ID4gPiArICAg
ICByZXR1cm4gYWRkciA/IHRydWUgOiBmYWxzZTsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiArc3Rh
dGljIHZvaWQgbHMya2JtY19zYXZlX3BjaV9kYXRhKHN0cnVjdCBsczJrYm1jX3BkYXRhICpwcml2
KQo+ID4gPiArewo+ID4gPiArICAgICBzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHByaXYtPnBkZXY7
Cj4gPiA+ICsgICAgIHN0cnVjdCBwY2lfZGV2ICpwYXJlbnQgPSBwZGV2LT5idXMtPnNlbGY7Cj4g
PiA+ICsgICAgIGludCBpOwo+ID4gPiArCj4gPiA+ICsgICAgIGZvciAoaSA9IDA7IGkgPCBBUlJB
WV9TSVpFKGluZGV4KTsgaSsrKQo+ID4gPiArICAgICAgICAgICAgIHBjaV9yZWFkX2NvbmZpZ19k
d29yZChwYXJlbnQsIGluZGV4W2ldLCAmcHJpdi0+cGNpX2RhdGEuZGF0YVtpXSk7Cj4gPiA+ICsK
PiA+ID4gKyAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY2luZGV4KTsgaSsrKQo+ID4g
PiArICAgICAgICAgICAgIHBjaV9yZWFkX2NvbmZpZ19kd29yZChwZGV2LCBjaW5kZXhbaV0sICZw
cml2LT5wY2lfZGF0YS5jZGF0YVtpXSk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgcGNpX3JlYWRfY29u
ZmlnX2R3b3JkKHBhcmVudCwgMHg4MGMsICZwcml2LT5wY2lfZGF0YS5kODBjKTsKPiA+ID4gKyAg
ICAgcHJpdi0+cGNpX2RhdGEuZDgwYyA9IChwcml2LT5wY2lfZGF0YS5kODBjICYgfigzIDw8IDE3
KSkgfCAoMSA8PCAxNyk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgcGNpX3JlYWRfY29uZmlnX2R3b3Jk
KHBhcmVudCwgMHg3MWMsICZwcml2LT5wY2lfZGF0YS5kNzFjKTsKPiA+ID4gKyAgICAgcHJpdi0+
cGNpX2RhdGEuZDcxYyB8PSAxIDw8IDI2Owo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMg
Ym9vbCBsczJrYm1jX2NoZWNrX3BjaWVfY29ubmVjdGVkKHN0cnVjdCBwY2lfZGV2ICpwYXJlbnQs
IHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHZvaWQgX19pb21l
bSAqbW1pbzsKPiA+ID4gKyAgICAgaW50IHN0cywgdGltZW91dCA9IDEwMDAwOwo+ID4gPiArCj4g
PiA+ICsgICAgIG1taW8gPSBwY2lfaW9tYXAocGFyZW50LCAwLCAweDEwMCk7Cj4gPiA+ICsgICAg
IGlmICghbW1pbykKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gPiA+ICsKPiA+
ID4gKyAgICAgd3JpdGVsKHJlYWRsKG1taW8pIHwgMHg4LCBtbWlvKTsKPiA+ID4gKyAgICAgd2hp
bGUgKHRpbWVvdXQpIHsKPiA+ID4gKyAgICAgICAgICAgICBzdHMgPSByZWFkbChtbWlvICsgMHhj
KTsKPiA+ID4gKyAgICAgICAgICAgICBpZiAoKHN0cyAmIDB4MTEpID09IDB4MTEpCj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ID4gKyAgICAgICAgICAgICBtZGVsYXkoMSk7
Cj4gPiA+ICsgICAgICAgICAgICAgdGltZW91dC0tOwo+ID4gPiArICAgICB9Cj4gPiA+ICsKPiA+
ID4gKyAgICAgcGNpX2lvdW5tYXAocGFyZW50LCBtbWlvKTsKPiA+ID4gKwo+ID4gPiArICAgICBp
ZiAoIXRpbWVvdXQpIHsKPiA+ID4gKyAgICAgICAgICAgICBkcm1fZXJyKGRldiwgInBjaWUgdHJh
aW4gZmFpbGVkIHN0YXR1cz0weCV4XG4iLCBzdHMpOwo+ID4gPiArICAgICAgICAgICAgIHJldHVy
biBmYWxzZTsKPiA+ID4gKyAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgIHJldHVybiB0cnVlOwo+
ID4gPiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgaW50IGxzMmtibWNfcmVjb3ZlX3BjaV9kYXRh
KHZvaWQgKmRhdGEpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVjdCBsczJrYm1jX3BkYXRhICpw
cml2ID0gZGF0YTsKPiA+ID4gKyAgICAgc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBwcml2LT5wZGV2
Owo+ID4gPiArICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gcHJpdi0+ZGRldjsKPiA+ID4g
KyAgICAgc3RydWN0IHBjaV9kZXYgKnBhcmVudCA9IHBkZXYtPmJ1cy0+c2VsZjsKPiA+ID4gKyAg
ICAgdTMyIGksIHRpbWVvdXQsIHJldHJ5ID0gMDsKPiA+ID4gKyAgICAgYm9vbCByZWFkeTsKPiA+
ID4gKwo+ID4gPiArICAgICBwY2lfd3JpdGVfY29uZmlnX2R3b3JkKHBhcmVudCwgUENJX0JBU0Vf
QUREUkVTU18yLCAwKTsKPiA+ID4gKyAgICAgcGNpX3dyaXRlX2NvbmZpZ19kd29yZChwYXJlbnQs
IFBDSV9CQVNFX0FERFJFU1NfMywgMCk7Cj4gPiA+ICsgICAgIHBjaV93cml0ZV9jb25maWdfZHdv
cmQocGFyZW50LCBQQ0lfQkFTRV9BRERSRVNTXzQsIDApOwo+ID4gPiArCj4gPiA+ICsgICAgIHRp
bWVvdXQgPSAxMDAwMDsKPiA+ID4gKyAgICAgd2hpbGUgKHRpbWVvdXQpIHsKPiA+ID4gKyAgICAg
ICAgICAgICByZWFkeSA9IGxzMmtibWNfYmFyMF9hZGRyX2lzX3NldChwYXJlbnQpOwo+ID4gPiAr
ICAgICAgICAgICAgIGlmICghcmVhZHkpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBicmVh
azsKPiA+ID4gKyAgICAgICAgICAgICBtZGVsYXkoMSk7Cj4gPiA+ICsgICAgICAgICAgICAgdGlt
ZW91dC0tOwo+ID4gPiArICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAgIGlmICghdGltZW91dCkK
PiA+ID4gKyAgICAgICAgICAgICBkcm1fd2FybihkZXYsICJiYXIgbm90IGNsZWFyIDBcbiIpOwo+
ID4gPiArCj4gPiA+ICtyZXRyYWluOgo+ID4gPiArICAgICBmb3IgKGkgPSAwOyBpIDwgQVJSQVlf
U0laRShpbmRleCk7IGkrKykKPiA+ID4gKyAgICAgICAgICAgICBwY2lfd3JpdGVfY29uZmlnX2R3
b3JkKHBhcmVudCwgaW5kZXhbaV0sIHByaXYtPnBjaV9kYXRhLmRhdGFbaV0pOwo+ID4gPiArCj4g
PiA+ICsgICAgIHBjaV93cml0ZV9jb25maWdfZHdvcmQocGFyZW50LCAweDgwYywgcHJpdi0+cGNp
X2RhdGEuZDgwYyk7Cj4gPiA+ICsgICAgIHBjaV93cml0ZV9jb25maWdfZHdvcmQocGFyZW50LCAw
eDcxYywgcHJpdi0+cGNpX2RhdGEuZDcxYyk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgLyogQ2hlY2sg
aWYgdGhlIHBjaWUgaXMgY29ubmVjdGVkICovCj4gPiA+ICsgICAgIHJlYWR5ID0gbHMya2JtY19j
aGVja19wY2llX2Nvbm5lY3RlZChwYXJlbnQsIGRldik7Cj4gPiA+ICsgICAgIGlmICghcmVhZHkp
Cj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJlYWR5Owo+ID4gPiArCj4gPiA+ICsgICAgIGZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGNpbmRleCk7IGkrKykKPiA+ID4gKyAgICAgICAgICAg
ICBwY2lfd3JpdGVfY29uZmlnX2R3b3JkKHBkZXYsIGNpbmRleFtpXSwgcHJpdi0+cGNpX2RhdGEu
Y2RhdGFbaV0pOwo+ID4gPiArCj4gPiA+ICsgICAgIGRybV9pbmZvKGRldiwgInBjaWUgcmVjb3Zl
cmVkIGRvbmVcbiIpOwo+ID4gPiArCj4gPiA+ICsgICAgIGlmICghcmV0cnkpIHsKPiA+ID4gKyAg
ICAgICAgICAgICAvKndhaXQgdS1ib290IGRkciBjb25maWcgKi8KPiA+ID4gKyAgICAgICAgICAg
ICBtZGVsYXkoQk1DX1JFU0VUX1dBSVQpOwo+ID4gPiArICAgICAgICAgICAgIHJlYWR5ID0gbHMy
a2JtY19iYXIwX2FkZHJfaXNfc2V0KHBhcmVudCk7Cj4gPiA+ICsgICAgICAgICAgICAgaWYgKCFy
ZWFkeSkgewo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0cnkgPSAxOwo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgZ290byByZXRyYWluOwo+ID4gPiArICAgICAgICAgICAgIH0KPiA+
ID4gKyAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgIHJldHVybiAwOwo+ID4gPiArfQo+ID4gPiAr
Cj4gPiA+ICtzdGF0aWMgaW50IGxzMmtibWNfcHVzaF9kcm1fbW9kZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2KQo+ID4gPiArewo+ID4gPiArICAgICBzdHJ1Y3QgbHMya2JtY19kZXZpY2UgKnNkZXYg
PSBsczJrYm1jX2RldmljZV9vZl9kZXYoZGV2KTsKPiA+ID4gKyAgICAgc3RydWN0IGRybV9jcnRj
ICpjcnRjID0gJnNkZXYtPmNydGM7Cj4gPiA+ICsgICAgIHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5l
ID0gY3J0Yy0+cHJpbWFyeTsKPiA+ID4gKyAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvciA9ICZzZGV2LT5jb25uZWN0b3I7Cj4gPiA+ICsgICAgIHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiID0gTlVMTDsKPiA+ID4gKyAgICAgc3RydWN0IGRybV9tb2RlX3NldCBzZXQ7Cj4gPiA+
ICsgICAgIHN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCBjdHg7Cj4gPiA+ICsgICAgIGlu
dCByZXQ7Cj4gPiA+ICsKPiA+ID4gKyAgICAgbXV0ZXhfbG9jaygmZGV2LT5tb2RlX2NvbmZpZy5t
dXRleCk7Cj4gPiA+ICsgICAgIGNvbm5lY3Rvci0+ZnVuY3MtPmZpbGxfbW9kZXMoY29ubmVjdG9y
LCA0MDk2LCA0MDk2KTsKPiA+ID4gKyAgICAgbXV0ZXhfdW5sb2NrKCZkZXYtPm1vZGVfY29uZmln
Lm11dGV4KTsKPiA+ID4gKwo+ID4gPiArICAgICBEUk1fTU9ERVNFVF9MT0NLX0FMTF9CRUdJTihk
ZXYsIGN0eCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX01PREVT
RVRfQUNRVUlSRV9JTlRFUlJVUFRJQkxFLCByZXQpOwo+ID4gPiArCj4gPiA+ICsgICAgIGlmIChw
bGFuZS0+c3RhdGUpCj4gPiA+ICsgICAgICAgICAgICAgZmIgPSBwbGFuZS0+c3RhdGUtPmZiOwo+
ID4gPiArICAgICBlbHNlCj4gPiA+ICsgICAgICAgICAgICAgZmIgPSBwbGFuZS0+ZmI7Cj4gPiA+
ICsKPiA+ID4gKyAgICAgaWYgKCFmYikgewo+ID4gPiArICAgICAgICAgICAgIGRybV9kYmcoZGV2
LCAiQ1JUQyBkb2Vzbid0IGhhdmUgY3VycmVudCBGQlxuIik7Cj4gPiA+ICsgICAgICAgICAgICAg
cmV0ID0gLUVJTlZBTDsKPiA+ID4gKyAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ID4gKyAgICAg
fQo+ID4gPiArCj4gPiA+ICsgICAgIGRybV9mcmFtZWJ1ZmZlcl9nZXQoZmIpOwo+ID4gPiArCj4g
PiA+ICsgICAgIHNldC5jcnRjID0gY3J0YzsKPiA+ID4gKyAgICAgc2V0LnggPSAwOwo+ID4gPiAr
ICAgICBzZXQueSA9IDA7Cj4gPiA+ICsgICAgIHNldC5tb2RlID0gJnNkZXYtPm1vZGU7Cj4gPiA+
ICsgICAgIHNldC5jb25uZWN0b3JzID0gJmNvbm5lY3RvcjsKPiA+ID4gKyAgICAgc2V0Lm51bV9j
b25uZWN0b3JzID0gMTsKPiA+ID4gKyAgICAgc2V0LmZiID0gZmI7Cj4gPiA+ICsKPiA+ID4gKyAg
ICAgcmV0ID0gY3J0Yy0+ZnVuY3MtPnNldF9jb25maWcoJnNldCwgJmN0eCk7Cj4gPiA+ICsKPiA+
ID4gK291dDoKPiA+ID4gKyAgICAgRFJNX01PREVTRVRfTE9DS19BTExfRU5EKGRldiwgY3R4LCBy
ZXQpOwo+ID4gPiArCj4gPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+
ID4gK3N0YXRpYyB2b2lkIGxzMmtibWNfZXZlbnRzX2ZuKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29y
aykKPiA+ID4gK3sKPiA+ID4gKyAgICAgc3RydWN0IGxzMmtibWNfcGRhdGEgKnByaXYgPSBjb250
YWluZXJfb2Yod29yaywgc3RydWN0IGxzMmtibWNfcGRhdGEsIGJtY193b3JrKTsKPiA+ID4gKwo+
ID4gPiArICAgICAvKgo+ID4gPiArICAgICAgKiBUaGUgcGNpZSBpcyBsb3N0IHdoZW4gdGhlIEJN
QyByZXNldHMsCj4gPiA+ICsgICAgICAqIGF0IHdoaWNoIHBvaW50IGFjY2VzcyB0byB0aGUgcGNp
ZSBmcm9tIG90aGVyIENQVXMKPiA+ID4gKyAgICAgICogaXMgc3VzcGVuZGVkIHRvIHByZXZlbnQg
YSBjcmFzaC4KPiA+ID4gKyAgICAgICovCj4gPiA+ICsgICAgIHN0b3BfbWFjaGluZShsczJrYm1j
X3JlY292ZV9wY2lfZGF0YSwgcHJpdiwgTlVMTCk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgZHJtX2lu
Zm8ocHJpdi0+ZGRldiwgInJlZHJhdyBjb25zb2xlXG4iKTsKPiA+ID4gKwo+ID4gPiArICAgICAv
KiBXZSBuZWVkIHRvIHJlLXB1c2ggdGhlIGRpc3BsYXkgZHVlIHRvIHByZXZpb3VzIHBjaWUgbG9z
cy4gKi8KPiA+ID4gKyAgICAgbHMya2JtY19wdXNoX2RybV9tb2RlKHByaXYtPmRkZXYpOwo+ID4g
PiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgaXJxcmV0dXJuX3QgbHMya2JtY19pbnRlcnJ1cHQo
aW50IGlycSwgdm9pZCAqYXJnKQo+ID4gPiArewo+ID4gPiArICAgICBzdHJ1Y3QgbHMya2JtY19w
ZGF0YSAqcHJpdiA9IGFyZzsKPiA+ID4gKwo+ID4gPiArICAgICBpZiAoc3lzdGVtX3N0YXRlICE9
IFNZU1RFTV9SVU5OSU5HKQo+ID4gPiArICAgICAgICAgICAgIHJldHVybiBJUlFfSEFORExFRDsK
PiA+ID4gKwo+ID4gPiArICAgICAvKiBza2lwIGludGVycnVwdCBpbiBCTUNfUkVTRVRfREVMQVkg
Ki8KPiA+ID4gKyAgICAgaWYgKHRpbWVfYWZ0ZXIoamlmZmllcywgcHJpdi0+cmVzZXRfdGltZSAr
IEJNQ19SRVNFVF9ERUxBWSkpCj4gPiA+ICsgICAgICAgICAgICAgc2NoZWR1bGVfd29yaygmcHJp
di0+Ym1jX3dvcmspOwo+ID4gPiArCj4gPiA+ICsgICAgIHByaXYtPnJlc2V0X3RpbWUgPSBqaWZm
aWVzOwo+ID4gPiArCj4gPiA+ICsgICAgIHJldHVybiBJUlFfSEFORExFRDsKPiA+ID4gK30KPiA+
ID4gKwo+ID4gPiArI2RlZmluZSBCTUNfUkVTRVRfR1BJTyAgICAgICAgICAgICAgICAgICAgICAg
MTQKPiA+ID4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19SRUdfQkFTRSAgICAgICAgICAgICAgIDB4
MWZlMDA1MDAKPiA+ID4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19SRUdfU0laRSAgICAgICAgICAg
ICAgIDB4MTgKPiA+ID4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19PRU4gICAgICAgICAgICAweDAK
PiA+ID4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19GVU5DICAgICAgICAgICAweDQKPiA+ID4gKyNk
ZWZpbmUgTE9PTkdTT05fR1BJT19JTlRQT0wgICAgICAgICAweDEwCj4gPiA+ICsjZGVmaW5lIExP
T05HU09OX0dQSU9fSU5URU4gICAgICAgICAgMHgxNAo+ID4gPiArCj4gPiA+ICsvKiBUaGUgZ3Bp
byBpbnRlcnJ1cHQgaXMgYSB3YXRjaGRvZyBpbnRlcnJ1cHQgdGhhdCBpcyB0cmlnZ2VyZWQgd2hl
biB0aGUgQk1DIHJlc2V0cy4gKi8KPiA+ID4gK3N0YXRpYyBpbnQgbHMya2JtY19ncGlvX3Jlc2V0
X2hhbmRsZXIoc3RydWN0IGxzMmtibWNfcGRhdGEgKnByaXYpCj4gPiA+ICt7Cj4gPiA+ICsgICAg
IGludCBpcnEsIHJldCA9IDA7Cj4gPiA+ICsgICAgIGludCBnc2kgPSAxNiArIChCTUNfUkVTRVRf
R1BJTyAmIDcpOwo+ID4gPiArICAgICB2b2lkIF9faW9tZW0gKmdwaW9fYmFzZTsKPiA+ID4gKwo+
ID4gPiArICAgICAvKiBTaW5jZSBMb29uZ3Nvbi0zQSBoYXJkd2FyZSBkb2VzIG5vdCBzdXBwb3J0
IEdQSU8gaW50ZXJydXB0IGNhc2NhZGUsCj4gPiA+ICsgICAgICAqIGNoaXAtPmdwaW9fdG9faXJx
KCkgY2Fubm90IGJlIGltcGxlbWVudGVkLAo+ID4gPiArICAgICAgKiBoZXJlIGFjcGlfcmVnaXN0
ZXJfZ3NpKCkgaXMgdXNlZCB0byBnZXQgZ3BpbyBpcnEuCj4gPiA+ICsgICAgICAqLwo+ID4gPiAr
ICAgICBpcnEgPSBhY3BpX3JlZ2lzdGVyX2dzaShOVUxMLCBnc2ksIEFDUElfRURHRV9TRU5TSVRJ
VkUsIEFDUElfQUNUSVZFX0xPVyk7Cj4gPiA+ICsgICAgIGlmIChpcnEgPCAwKQo+ID4gPiArICAg
ICAgICAgICAgIHJldHVybiBpcnE7Cj4gPiA+ICsKPiA+ID4gKyAgICAgZ3Bpb19iYXNlID0gaW9y
ZW1hcChMT09OR1NPTl9HUElPX1JFR19CQVNFLCBMT09OR1NPTl9HUElPX1JFR19TSVpFKTsKPiA+
ID4gKyAgICAgaWYgKCFncGlvX2Jhc2UpIHsKPiA+ID4gKyAgICAgICAgICAgICBhY3BpX3VucmVn
aXN0ZXJfZ3NpKGdzaSk7Cj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoZ3Bpb19i
YXNlKTsKPiA+ID4gKyAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgIHdyaXRlbChyZWFkbChncGlv
X2Jhc2UgKyBMT09OR1NPTl9HUElPX09FTikgfCBCSVQoQk1DX1JFU0VUX0dQSU8pLAo+ID4gPiAr
ICAgICAgICAgICAgZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19PRU4pOwo+ID4gPiArICAgICB3
cml0ZWwocmVhZGwoZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19GVU5DKSAmIH5CSVQoQk1DX1JF
U0VUX0dQSU8pLAo+ID4gPiArICAgICAgICAgICAgZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19G
VU5DKTsKPiA+ID4gKyAgICAgd3JpdGVsKHJlYWRsKGdwaW9fYmFzZSArIExPT05HU09OX0dQSU9f
SU5UUE9MKSAmIH5CSVQoQk1DX1JFU0VUX0dQSU8pLAo+ID4gPiArICAgICAgICAgICAgZ3Bpb19i
YXNlICsgTE9PTkdTT05fR1BJT19JTlRQT0wpOwo+ID4gPiArICAgICB3cml0ZWwocmVhZGwoZ3Bp
b19iYXNlICsgTE9PTkdTT05fR1BJT19JTlRFTikgfCBCSVQoQk1DX1JFU0VUX0dQSU8pLAo+ID4g
PiArICAgICAgICAgICAgZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19JTlRFTik7Cj4gPiA+ICsK
PiA+ID4gKyAgICAgcmV0ID0gcmVxdWVzdF9pcnEoaXJxLCBsczJrYm1jX2ludGVycnVwdCwgSVJR
Rl9TSEFSRUQgfCBJUlFGX1RSSUdHRVJfRkFMTElORywKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgImxzMmtibWMgZ3BpbyIsIHByaXYpOwo+ID4gPiArCj4gPiA+ICsgICAgIGFjcGlfdW5y
ZWdpc3Rlcl9nc2koZ3NpKTsKPiA+ID4gKyAgICAgaW91bm1hcChncGlvX2Jhc2UpOwo+ID4gPiAr
Cj4gPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBp
bnQgbHMya2JtY19wZGF0YV9pbml0aWFsKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsIHN0
cnVjdCBsczJrYm1jX3BkYXRhICpwcml2KQo+ID4gPiArewo+ID4gPiArICAgICBpbnQgcmV0Owo+
ID4gPiArCj4gPiA+ICsgICAgIHByaXYtPnBkZXYgPSAqKHN0cnVjdCBwY2lfZGV2ICoqKWRldl9n
ZXRfcGxhdGRhdGEoJnBkZXYtPmRldik7Cj4gPiA+ICsKPiA+ID4gKyAgICAgbHMya2JtY19zYXZl
X3BjaV9kYXRhKHByaXYpOwo+ID4gPiArCj4gPiA+ICsgICAgIElOSVRfV09SSygmcHJpdi0+Ym1j
X3dvcmssIGxzMmtibWNfZXZlbnRzX2ZuKTsKPiA+ID4gKwo+ID4gPiArICAgICByZXQgPSByZXF1
ZXN0X2lycShwcml2LT5wZGV2LT5pcnEsIGxzMmtibWNfaW50ZXJydXB0LAo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBJUlFGX1NIQVJFRCB8IElSUUZfVFJJR0dFUl9SSVNJTkcsICJsczJr
Ym1jIHBjaWUiLCBwcml2KTsKPiA+ID4gKyAgICAgaWYgKHJldCkgewo+ID4gPiArICAgICAgICAg
ICAgIHByX2VycigicmVxdWVzdF9pcnEoJWQpIGZhaWxlZFxuIiwgcHJpdi0+cGRldi0+aXJxKTsK
PiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiArICAgICB9Cj4gPiA+ICsKPiA+
ID4gKyAgICAgcmV0dXJuIGxzMmtibWNfZ3Bpb19yZXNldF9oYW5kbGVyKHByaXYpOwo+ID4gPiAr
fQo+ID4gPiArCj4gPiA+ICAgLyoKPiA+ID4gICAgKiBQbGF0Zm9ybSBkcml2ZXIKPiA+ID4gICAg
Ki8KPiA+ID4gQEAgLTU5OCwxMiArODc3LDE1IEBAIHN0YXRpYyBpbnQgbHMya2JtY19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiAgICAgICBpZiAoSVNfRVJSKHByaXYp
KQo+ID4gPiAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4gPgo+ID4gPiAtICAgICBw
cml2LT5wZGV2ID0gKihzdHJ1Y3QgcGNpX2RldiAqKilkZXZfZ2V0X3BsYXRkYXRhKCZwZGV2LT5k
ZXYpOwo+ID4gPiArICAgICByZXQgPSBsczJrYm1jX3BkYXRhX2luaXRpYWwocGRldiwgcHJpdik7
Cj4gPiA+ICsgICAgIGlmIChyZXQpCj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+
ID4KPiA+ID4gICAgICAgc2RldiA9IGxzMmtibWNfZGV2aWNlX2NyZWF0ZSgmbHMya2JtY19kcml2
ZXIsIHBkZXYsIHByaXYpOwo+ID4gPiAgICAgICBpZiAoSVNfRVJSKHNkZXYpKQo+ID4gPiAgICAg
ICAgICAgICAgIHJldHVybiBQVFJfRVJSKHNkZXYpOwo+ID4gPiAgICAgICBkZXYgPSAmc2Rldi0+
ZGV2Owo+ID4gPiArICAgICBwcml2LT5kZGV2ID0gJnNkZXYtPmRldjsKPiA+ID4KPiA+ID4gICAg
ICAgcmV0ID0gZHJtX2Rldl9yZWdpc3RlcihkZXYsIDApOwo+ID4gPiAgICAgICBpZiAocmV0KQo+
ID4KPiA+IC0tCj4gPiAtLQo+ID4gVGhvbWFzIFppbW1lcm1hbm4KPiA+IEdyYXBoaWNzIERyaXZl
ciBEZXZlbG9wZXIKPiA+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSAo+ID4g
RnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkKPiA+IEdGOiBJdm8g
VG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1vZXJtYW4KPiA+
IEhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQo+ID4KPgo+Cj4gLS0KPiBUaGFua3MuCj4gQmluYmlu
CgoKCi0tIApUaGFua3MuCkJpbmJpbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWkt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
