Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CEFA01D26
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Jan 2025 02:57:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tUcMv-0003bY-Cj;
	Mon, 06 Jan 2025 01:57:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1tUcMs-0003bQ-OE
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 01:57:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OlWS4YvO53NnHzw6pvNdcFFPAPIg3E65lSWjybM2Ieg=; b=N1t/fYk7EoZPe4IHNvobhlHphg
 s6yPDIeULHJ/gmQt56sIhWV5HanJeVqGFyyEwdMXo+6GCfxp0m/IFkYVlHp0Fxy5OoiWaokNF3F72
 4EsVIIoNKRSVI6fTrTGqVJKQ9WRr7d4v+GR5hPyp/s85rsPUQ8AZwcWEvBePvOBkTXc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OlWS4YvO53NnHzw6pvNdcFFPAPIg3E65lSWjybM2Ieg=; b=VmV5J0mu5UY7rE/uyDy5SOTGIT
 5aq/C9YA226A5wXiEx8Lkl7su9Oy4wVEy7WyzyEflJmy5DksoYAz7deuwyWvvi4kD32JSNYK29NZ4
 3sjN665mT9+atRffgFSX3YoUKDU6/B7gOnReeCiqKl+qNkQHL4ed5DNdP0ANwU9+ic7A=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tUcMr-0006Us-TR for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 01:57:22 +0000
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-5d7e3f1fdafso29238381a12.0
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 05 Jan 2025 17:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736128630; x=1736733430; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OlWS4YvO53NnHzw6pvNdcFFPAPIg3E65lSWjybM2Ieg=;
 b=bFgc0WkMNmKsrSw4xRqmXAmAbP6AdnjxmdvVdmF3TIywMbJWBcVIXzHPS7z/Xbn48M
 ysQ+MAKIt5qIezQlIsAs+3bG1vfrvUjgbXefUqCNr8cYEpBGqOZLDZexG2F0+imwrVct
 +z7nVL6Rib79aTcfTaEXuFJYBiN2zhJetdxAmes5PAbETIINUIYkcx3ebBpY4/3r7fCf
 izlMmWREotoMP4SwuS6A++a9ocG2htkWtx1T9tVwGH5WMIxkBUEHZcn8QYsQDTTew2tH
 WK/XNFzBejsuTe5yRVfSuYLPwBRWLk/+kv8HDFXNXijtlXAn16JgRLlmG9dNMU8kn1e8
 0qXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736128630; x=1736733430;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OlWS4YvO53NnHzw6pvNdcFFPAPIg3E65lSWjybM2Ieg=;
 b=l6TPHPHHk8/o2F+LKP8R1In6hQ9nfOsHnyIRS7mjiA844gju/TEj+gGx710seSrxrH
 6z02PI+IxSRPAbwREviVOfBedhdaUrxRm2LCZB4hkqpyLjEe8OAfV/X/BDXJTKgTASZ4
 os668MZFXj0twSsh+7NdCuXrMO9hr1SgkafWV3XuCd+cRLD0Uizib3tC86afAu67O4j9
 74h3OAP2JyOGky+u+JM/F2UNQtQdAEPLCwbV6KHJ7L3EvE1Ivsg+e4BY4OBJ67AMsKg6
 rHGkOxOUlfJvdl45WkLifyWLWNzdI8UKNX4M1NiBjoRDuC5oZ2qJZcGBhmuuHZJwkUAX
 iAug==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLq1+LD2yNM7+IuX/1n7VD/GR84B64U1PXkz4783Z2sNfHZgvFA1Z24qI8ZX7LjhqTYulORzw97qy5rjR4GPejxSM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxw+45of1eRsgVxnPt8qWDqyk8niVrB2vS2FA3S24P8kIKHQFyr
 Z2kpNovIvLtEpS/RC8FBs8LAW6D8AyGYrxrb/beKq6udojNS1ARlWyWeE1WIcouWg392yUykawQ
 XmTE3mTqEDF97/B8H+G11/UKUWIg=
X-Gm-Gg: ASbGncuRjd6oN9lggHQo7a5Dvmq194cus1JmMfa3Lkg43NWYP5YvbERbIp7IOlAceET
 6ocAVuzCBqK2uO92CoKGxqq5PvIaZLHs6ZjUTe9Y4
X-Google-Smtp-Source: AGHT+IHp3npAFMqevwFn4zq6KYPbZvnYmmZPzwsSEsLp2V2eixfHQyRdfe0VM6iSm48wm7zTxXNLli6e9amHYTcX/ow=
X-Received: by 2002:a05:6402:1e90:b0:5d3:ff30:b4cc with SMTP id
 4fb4d7f45d1cf-5d81de39866mr52543342a12.33.1736128630093; Sun, 05 Jan 2025
 17:57:10 -0800 (PST)
MIME-Version: 1.0
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <4d62076ee560b35c653a9fbced8d03ef3bdb3005.1735550269.git.zhoubinbin@loongson.cn>
 <3daaaff8-062a-4985-a5bc-8d228314b02e@suse.de>
 <CAMpQs4JcuRhpOyXHxy0ab+D-Wd0itKdb0GiZdTE59_qEpUfyLA@mail.gmail.com>
 <390c14a5-44fe-4328-bcc4-2aa1384e3ad1@suse.de>
In-Reply-To: <390c14a5-44fe-4328-bcc4-2aa1384e3ad1@suse.de>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 6 Jan 2025 09:56:57 +0800
X-Gm-Features: AbW1kvYlBMzJH0hwIKgBJ-3gkJK4OQkqvI5bw9nzSAa4-sFHT3qKE49iY62ABvI
Message-ID: <CAMpQs4+0Pn8c=C6bEk=_M4f8WvXv7K6Rbcw2_ghOZmxgE88e3Q@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas: On Thu, Jan 2, 2025 at 9:32 PM Thomas Zimmermann
    wrote: > > Hi > > > Am 02.01.25 um 13:55 schrieb Binbin Zhou: > > Hi Thomas:
    > > > > Thanks for your reply. > > > > On Thu, Jan 2, 2025 at 5:07 P [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.46 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.46 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.46 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1tUcMr-0006Us-TR
Subject: Re: [Openipmi-developer] [PATCH v1 3/4] drm/ls2kbmc: Add support
 for Loongson-2K BMC display
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

SGkgVGhvbWFzOgoKCk9uIFRodSwgSmFuIDIsIDIwMjUgYXQgOTozMuKAr1BNIFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiB3cm90ZToKPgo+IEhpCj4KPgo+IEFtIDAyLjAx
LjI1IHVtIDEzOjU1IHNjaHJpZWIgQmluYmluIFpob3U6Cj4gPiBIaSBUaG9tYXM6Cj4gPgo+ID4g
VGhhbmtzIGZvciB5b3VyIHJlcGx5Lgo+ID4KPiA+IE9uIFRodSwgSmFuIDIsIDIwMjUgYXQgNTow
N+KAr1BNIFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiB3cm90ZToKPiA+
PiBIaQo+ID4+Cj4gPj4KPiA+PiBBbSAzMC4xMi4yNCB1bSAxMDozMSBzY2hyaWViIEJpbmJpbiBa
aG91Ogo+ID4+IFsuLi5dCj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJp
dmVyIGxzMmtibWNfcGxhdGZvcm1fZHJpdmVyID0gewo+ID4+PiArICAgICAuZHJpdmVyID0gewo+
ID4+PiArICAgICAgICAgICAgIC5uYW1lID0gImxzMmtibWMtZnJhbWVidWZmZXIiLAo+ID4+IFRo
ZSBkcml2ZXIgaXMgbW9zdGx5IGEgY29weSBvZiBzaW1wbGVkcm0uIFdoeSBkb24ndCB5b3UgdXNl
Cj4gPj4gInNpbXBsZS1mcmFtZWJ1ZmZlciIgZm9yIHlvdXIgZGV2aWNlIG5hbWU/IFlvdSBjb3Vs
ZCB1c2Ugc2ltcGxlZHJtCj4gPj4gZGlyZWN0bHkgdGhlbi4KPiA+IEFoLCBpbmRlZWQsIHRoZSBk
cml2ZXIgaXMgYmFzZWQgb24gc2ltcGxlZHJtLgo+ID4KPiA+IEluaXRpYWxseSwgSSBhbHNvIHRy
aWVkIHRvIHVzZSBzaW1wbGVkcm0gZGlyZWN0bHksIGJ1dCBpdCB3aWxsIGZhaWwgaW4KPiA+IGRy
bSBtZW1vcnkgYWNxdWlyZS4KPgo+IENvdWxkIHlvdSBwb2ludCB0byB0aGUgZXhhY3QgY2FsbCB0
aGF0IGZhaWxzIHdpdGhpbiBzaW1wbGVkcm0/CgpbICAgIDguMjg5ODIzXSBzaW1wbGUtZnJhbWVi
dWZmZXIgc2ltcGxlLWZyYW1lYnVmZmVyLjA6IFtkcm1dICpFUlJPUioKY291bGQgbm90IGFjcXVp
cmUgbWVtb3J5IHJhbmdlIFttZW0gMHhlMDAzMTIwMDAwMC0weGUwMDMxNWZmZmZmIGZsYWdzCjB4
MjAwXTogLTE2ClsgICAgOC4zMTI2ODFdIHNpbXBsZS1mcmFtZWJ1ZmZlciBzaW1wbGUtZnJhbWVi
dWZmZXIuMDogcHJvYmUgd2l0aApkcml2ZXIgc2ltcGxlLWZyYW1lYnVmZmVyIGZhaWxlZCB3aXRo
IGVycm9yIC0xNgo+Cj4gPiBCZWNhdXNlIGFsdGhvdWdoIHdlIHJlZ2lzdGVyIHRoZSBkcml2ZXIg
aW4gcGxhdGZvcm0gZm9ybSwgaXRzIG1lbW9yeQo+ID4gYmVsb25ncyB0byBwY2kgc3BhY2UgYW5k
IHdlIGNhbiBzZWUgdGhlIGNvcnJlc3BvbmRpbmcgcGNpIHByb2JlIGFuZAo+ID4gcmVzb3VyY2Ug
YWxsb2NhdGlvbiBpbiBQYXRjaC0xLgo+Cj4gSSBkb24ndCB1bmRlcnN0YW5kLiBHcmFwaGljcyBt
ZW1vcnkgaXMgb2Z0ZW4gbG9jYXRlZCBvbiB0aGUgUENJIGJ1cy4KPiBXaGF0IGlzIHNvIHNwZWNp
YWwgYWJvdXQgdGhpcyBvbmU/Cj4KPiA+IFRoZXJlZm9yZSwgd2UgbmVlZCB0byB1c2UgYXBlcnR1
cmVfcmVtb3ZlX2NvbmZsaWN0aW5nX3BjaV9kZXZpY2VzKCkuCj4KPiBTbyB0aGVyZSBpcyBhbHJl
YWR5IGEgZGV2aWNlIHRoYXQgcmVwcmVzZW50cyB0aGUgZ3JhcGhpY3MgY2FyZD8gVGhhdCdzCj4g
d2hhdCB5b3UnZCByZW1vdmUgaGVyZT8gSWYgeW91IG9ubHkgYWRkIHRoYXQgTUZEIGRldmljZSwg
d2hvIG93bnMgdGhlCj4gZnJhbWVidWZmZXI/IElmIGl0J3MgdGhlIFBDSSBkZXZpY2UgZnJvbSBw
YXRjaCAxICgibHMyay1ibWMiKSwgd2h5IGRvZXMKPiBhcGVydHVyZV9yZW1vdmVfY29uZmxpY3Rp
bmdfcGNpX2RldmljZXMoKSBub3QgcmVtb3ZlIHRoYXQgZGV2aWNlPyBJJ20KPiBzb21ld2hhdCBj
b25mdXNlZCwgYmVjYXVzZSB0aGUgbG9naWMgaW4geW91ciBkcml2ZXIgbW9zdGx5IGxvb2tzIGxp
a2UgaXQKPiBiaW5kcyB0byBhIHByZS1jb25maWd1cmVkIGZyYW1lYnVmZmVyLCBidXQgc29tZSBv
ZiB0aGUgY29kZSBkb2Vzbid0Lgo+IEJlc3QgcmVnYXJkcyBUaG9tYXMKPgo+ID4KPiA+IEFsc28s
IHNpbmNlIHdlIGFyZSB1c2luZyBCTUMgZGlzcGxheSwgdGhlIGRpc3BsYXkgd2lsbCBiZSBkaXNj
b25uZWN0ZWQKPiA+IHdoZW4gQk1DIHJlc2V0LCBhdCB0aGlzIHRpbWUgd2UgbmVlZCB0byBwdXNo
IHRoZSBkaXNwbGF5IGRhdGEgKGNydGMsCj4gPiBjb25uZWN0b3IsIGV0Yy4pIG1hbnVhbGx5IGFz
IHNob3duIGluIFBhdGNoLTQuCj4gPgo+ID4gUHJvYmFibHkgaXQncyBub3QgdGhlIG1vc3Qgc3Vp
dGFibGUgd2F5IHRvIGltcGxlbWVudCBpdC4KPiA+Cj4gPj4gQmVzdCByZWdhcmRzCj4gPj4gVGhv
bWFzCj4gPj4KPiA+Pj4gKyAgICAgfSwKPiA+Pj4gKyAgICAgLnByb2JlID0gbHMya2JtY19wcm9i
ZSwKPiA+Pj4gKyAgICAgLnJlbW92ZSA9IGxzMmtibWNfcmVtb3ZlLAo+ID4+PiArfTsKPiA+Pj4g
Kwo+ID4+PiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihsczJrYm1jX3BsYXRmb3JtX2RyaXZlcik7
Cj4gPj4+ICsKPiA+Pj4gK01PRFVMRV9ERVNDUklQVElPTigiRFJNIGRyaXZlciBmb3IgTG9vbmdz
b24tMksgQk1DIik7Cj4gPj4+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7Cj4gPj4gLS0KPiA+PiAt
LQo+ID4+IFRob21hcyBaaW1tZXJtYW5uCj4gPj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+
ID4+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSAo+ID4+IEZyYW5rZW5zdHJh
c3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBHZXJtYW55Cj4gPj4gR0Y6IEl2byBUb3RldiwgQW5k
cmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbgo+ID4+IEhSQiAzNjgw
OSAoQUcgTnVlcm5iZXJnKQo+ID4+Cj4gPgo+Cj4gLS0KPiAtLQo+IFRob21hcyBaaW1tZXJtYW5u
Cj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSAo+IEZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBHZXJtYW55
Cj4gR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRpZW4g
TW9lcm1hbgo+IEhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQo+CgoKLS0gClRoYW5rcy4KQmluYmlu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Blbmlw
bWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29w
ZW5pcG1pLWRldmVsb3Blcgo=
