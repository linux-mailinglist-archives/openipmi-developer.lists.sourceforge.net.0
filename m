Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5E6A01F83
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Jan 2025 08:03:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tUh9S-0000Mj-8W;
	Mon, 06 Jan 2025 07:03:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1tUh9R-0000MX-0n
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 07:03:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WN0eHlvRZLqUth7fdNmiixC7R1slFhIulRWIs6eGyhw=; b=WLklpbZmbZii0fRI2/t/dalOTg
 bKXl7DarKgYkIFOAVjqaKqNGF0ze44jRkMvSJWYSnw6P2WhEITflDxhrd/KflItLx7abxPYIMnv4h
 O/TRTHaMvrDwlUKW/806lUSvC0Q9XuW+Z4plguT+mlENqvESLvpC9FavAYW5opnju5eU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WN0eHlvRZLqUth7fdNmiixC7R1slFhIulRWIs6eGyhw=; b=QURwKJ62DTcHRDdDW5lAJeD+CY
 1MaC2w6vBV6KxW/lYMykbXqOzwV0rMp84iIZlnlvImKxfXCA4hueNbS4VnsIq8tNAerDvWkoI9adC
 dovl+rinxlvB1q/4psZ/0dE3a+JvVUSJoq1MH142uk8inI9U8DT9PgCD4K30V+lpdlJk=;
Received: from mail-ed1-f49.google.com ([209.85.208.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tUh9Q-0008Jn-5U for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 07:03:48 +0000
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-5d3f57582a2so26768837a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 05 Jan 2025 23:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736147016; x=1736751816; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WN0eHlvRZLqUth7fdNmiixC7R1slFhIulRWIs6eGyhw=;
 b=gSFTuvRBolAjcJ4bbK5kmHX6BzsxVXN+Elfa3Vr9snjlCq6xSdnL6FXZ/pyMP/ekwV
 BX546Xw9O9dSXheHN/U3kQ+NIOV74P4mt6/mkngShDPSHxvRtK7cqxiBX8G7ge+meXVw
 b4AsyFt9W2vUvSLlawuATOulkuDz4wlGTy8rS4CgJOjUIa3aNk8nh9VmqzT64+uQygHh
 zlWJ4gfjVVQ6/e/FpCMYX4JIlViiqz34MIWMuDbLclg7lH4TsP5+tcaiG6FjNPm0ZwXY
 V6cVfEHU/lyUUxqThj7JM5cVLCQ/L9xzx2cqU10aRusNKmmNE4Fy5Qq4mfhudVwOkoWN
 uYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736147016; x=1736751816;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WN0eHlvRZLqUth7fdNmiixC7R1slFhIulRWIs6eGyhw=;
 b=PJxEdGdJHhYYxuueupho468jKTXnTxlTbb01cFC/O2nd2exbkvXmfXzNqFKDR9o0dF
 Fv7vl7CtzurlYIDnSTqHlk/jlEl05wLGlzpgr9r5QI0T9EemqnxlQxA2jItV9yOsCSwj
 dzcJ95nxVqwEosO1u1QkkCSsgqIp22LU00vHcQVUFLOdBuprLBM/Gf9NTjyyRS3w5ybF
 hwJbW53Fm2QUpYsdNIjddSoxZBsEUdYqXCLTaElisINimOzAIZ0UCmECJQ33mwDviTv9
 BwP1D9m8Z6huL7dTTIL6YQzwFrjTfZDFWngrxSQpVKwf59jTwRcVE9D89Qm+JU/a+AkV
 zy7A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJO40wzZtrreH3nkuTexjfafFhL4XVa+7zhxrXcReX68a2KHWwQujKy6f0qdvKr5oSMzACeC90aPfh9P6tmgpVWFI=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzCxsNwIG7SzXAoF//mmFkCBToSHYrq9SLr/UIXJAzniqkWoyGP
 Ib+N5cAds/cwBKR6G9jdcZjz9eZZaMsxsEJmQkRqFAnfHvT1+fJNZFO5o1fSvsTvriQYmWtubii
 K1EV3xUn6ODz96p7SaryF5B++ibI=
X-Gm-Gg: ASbGncvahbe1tMkMy9UNx/+kOga2gevHGZ5uN/VHPzuHKwgn4JZAkM/vxQpHkJBtOOx
 NtOdCVlH49dk+shnfVjucAiYEzWiX229TaRHbzDQn
X-Google-Smtp-Source: AGHT+IGMkHPDNbs/bcxbVow/ye0IVS3X1UdnCWKNwdCTlSfAO5AKScoqQ8hW426T+yLCtzoA1OcxbNuBrD9bCPI5FGY=
X-Received: by 2002:a05:6402:390b:b0:5d0:e461:68e6 with SMTP id
 4fb4d7f45d1cf-5d8024822a5mr53462948a12.17.1736147016283; Sun, 05 Jan 2025
 23:03:36 -0800 (PST)
MIME-Version: 1.0
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <4d62076ee560b35c653a9fbced8d03ef3bdb3005.1735550269.git.zhoubinbin@loongson.cn>
 <3daaaff8-062a-4985-a5bc-8d228314b02e@suse.de>
 <CAMpQs4JcuRhpOyXHxy0ab+D-Wd0itKdb0GiZdTE59_qEpUfyLA@mail.gmail.com>
 <390c14a5-44fe-4328-bcc4-2aa1384e3ad1@suse.de>
In-Reply-To: <390c14a5-44fe-4328-bcc4-2aa1384e3ad1@suse.de>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 6 Jan 2025 15:03:23 +0800
X-Gm-Features: AbW1kvaA-CPbm5BMeJ4LfWbuB6jOL4jyphKqrcXwDCyIAy9vEeDfIzAZz8-C9Mw
Message-ID: <CAMpQs4L38rDEDYM64jJ6pO+g=M4+etKN9v9+ygzkLY6RQgu94A@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas: The last reply email was incomplete, sorry for
   the incomplete reply due to my mistake. On Thu, Jan 2, 2025 at 9:32 PM Thomas
    Zimmermann wrote: > > Hi > > > Am 02.01.25 um 13:55 schrieb Binbin Zhou:
   > > Hi Thomas: > > > > Thanks for your reply. > > > > On Thu, Jan 2, 2025
   at 5:07 P [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.49 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.208.49 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.49 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1tUh9Q-0008Jn-5U
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

SGkgVGhvbWFzOgoKVGhlIGxhc3QgcmVwbHkgZW1haWwgd2FzIGluY29tcGxldGUsIHNvcnJ5IGZv
ciB0aGUgaW5jb21wbGV0ZSByZXBseQpkdWUgdG8gbXkgbWlzdGFrZS4KCk9uIFRodSwgSmFuIDIs
IDIwMjUgYXQgOTozMuKAr1BNIFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
PiB3cm90ZToKPgo+IEhpCj4KPgo+IEFtIDAyLjAxLjI1IHVtIDEzOjU1IHNjaHJpZWIgQmluYmlu
IFpob3U6Cj4gPiBIaSBUaG9tYXM6Cj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHJlcGx5Lgo+ID4K
PiA+IE9uIFRodSwgSmFuIDIsIDIwMjUgYXQgNTowN+KAr1BNIFRob21hcyBaaW1tZXJtYW5uIDx0
emltbWVybWFubkBzdXNlLmRlPiB3cm90ZToKPiA+PiBIaQo+ID4+Cj4gPj4KPiA+PiBBbSAzMC4x
Mi4yNCB1bSAxMDozMSBzY2hyaWViIEJpbmJpbiBaaG91Ogo+ID4+IFsuLi5dCj4gPj4+ICsKPiA+
Pj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGxzMmtibWNfcGxhdGZvcm1fZHJpdmVy
ID0gewo+ID4+PiArICAgICAuZHJpdmVyID0gewo+ID4+PiArICAgICAgICAgICAgIC5uYW1lID0g
ImxzMmtibWMtZnJhbWVidWZmZXIiLAo+ID4+IFRoZSBkcml2ZXIgaXMgbW9zdGx5IGEgY29weSBv
ZiBzaW1wbGVkcm0uIFdoeSBkb24ndCB5b3UgdXNlCj4gPj4gInNpbXBsZS1mcmFtZWJ1ZmZlciIg
Zm9yIHlvdXIgZGV2aWNlIG5hbWU/IFlvdSBjb3VsZCB1c2Ugc2ltcGxlZHJtCj4gPj4gZGlyZWN0
bHkgdGhlbi4KPiA+IEFoLCBpbmRlZWQsIHRoZSBkcml2ZXIgaXMgYmFzZWQgb24gc2ltcGxlZHJt
Lgo+ID4KPiA+IEluaXRpYWxseSwgSSBhbHNvIHRyaWVkIHRvIHVzZSBzaW1wbGVkcm0gZGlyZWN0
bHksIGJ1dCBpdCB3aWxsIGZhaWwgaW4KPiA+IGRybSBtZW1vcnkgYWNxdWlyZS4KPgo+IENvdWxk
IHlvdSBwb2ludCB0byB0aGUgZXhhY3QgY2FsbCB0aGF0IGZhaWxzIHdpdGhpbiBzaW1wbGVkcm0/
CgpJZiB3ZSB1c2Ugc2ltcGxlZHJtIGRpcmVjdGx5LCB0aGUgZm9sbG93aW5nIGVycm9yIG9jY3Vy
czoKClsgICAgOC4yODk4MjNdIHNpbXBsZS1mcmFtZWJ1ZmZlciBzaW1wbGUtZnJhbWVidWZmZXIu
MDogW2RybV0gKkVSUk9SKgpjb3VsZCBub3QgYWNxdWlyZSBtZW1vcnkgcmFuZ2UgW21lbSAweGUw
MDMxMjAwMDAwLTB4ZTAwMzE1ZmZmZmYgZmxhZ3MKMHgyMDBdOiAtMTYKWyAgICA4LjMxMjY4MV0g
c2ltcGxlLWZyYW1lYnVmZmVyIHNpbXBsZS1mcmFtZWJ1ZmZlci4wOiBwcm9iZSB3aXRoCmRyaXZl
ciBzaW1wbGUtZnJhbWVidWZmZXIgZmFpbGVkIHdpdGggZXJyb3IgLTE2CgpUaGUgcmVhc29uIGZv
ciB0aGUgZmFpbHVyZTogb3ZlcmxhcHBpbmcgcmVzb3VyY2VzLgoKaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjYuMTIuNi9zb3VyY2UvZHJpdmVycy92aWRlby9hcGVydHVyZS5jI0wx
NzUKPgo+ID4gQmVjYXVzZSBhbHRob3VnaCB3ZSByZWdpc3RlciB0aGUgZHJpdmVyIGluIHBsYXRm
b3JtIGZvcm0sIGl0cyBtZW1vcnkKPiA+IGJlbG9uZ3MgdG8gcGNpIHNwYWNlIGFuZCB3ZSBjYW4g
c2VlIHRoZSBjb3JyZXNwb25kaW5nIHBjaSBwcm9iZSBhbmQKPiA+IHJlc291cmNlIGFsbG9jYXRp
b24gaW4gUGF0Y2gtMS4KPgo+IEkgZG9uJ3QgdW5kZXJzdGFuZC4gR3JhcGhpY3MgbWVtb3J5IGlz
IG9mdGVuIGxvY2F0ZWQgb24gdGhlIFBDSSBidXMuCj4gV2hhdCBpcyBzbyBzcGVjaWFsIGFib3V0
IHRoaXMgb25lPwo+Cj4gPiBUaGVyZWZvcmUsIHdlIG5lZWQgdG8gdXNlIGFwZXJ0dXJlX3JlbW92
ZV9jb25mbGljdGluZ19wY2lfZGV2aWNlcygpLgo+Cj4gU28gdGhlcmUgaXMgYWxyZWFkeSBhIGRl
dmljZSB0aGF0IHJlcHJlc2VudHMgdGhlIGdyYXBoaWNzIGNhcmQ/IFRoYXQncwo+IHdoYXQgeW91
J2QgcmVtb3ZlIGhlcmU/IElmIHlvdSBvbmx5IGFkZCB0aGF0IE1GRCBkZXZpY2UsIHdobyBvd25z
IHRoZQo+IGZyYW1lYnVmZmVyPyBJZiBpdCdzIHRoZSBQQ0kgZGV2aWNlIGZyb20gcGF0Y2ggMSAo
ImxzMmstYm1jIiksIHdoeSBkb2VzCj4gYXBlcnR1cmVfcmVtb3ZlX2NvbmZsaWN0aW5nX3BjaV9k
ZXZpY2VzKCkgbm90IHJlbW92ZSB0aGF0IGRldmljZT8gSSdtCj4gc29tZXdoYXQgY29uZnVzZWQs
IGJlY2F1c2UgdGhlIGxvZ2ljIGluIHlvdXIgZHJpdmVyIG1vc3RseSBsb29rcyBsaWtlIGl0Cj4g
YmluZHMgdG8gYSBwcmUtY29uZmlndXJlZCBmcmFtZWJ1ZmZlciwgYnV0IHNvbWUgb2YgdGhlIGNv
ZGUgZG9lc24ndC4KClBlcmhhcHMgdGhlIHVzZSBvZiBhcGVydHVyZV9yZW1vdmVfY29uZmxpY3Rp
bmdfcGNpX2RldmljZXMoKSBpcyB3cm9uZywKYXMgdGhlcmUgaXMgb25seSBvbmUgZGlzcGxheSBk
ZXZpY2UgZm9yIHRoZSBMUzJLIEJNQyBhbmQgdGhlcmUgd2lsbCBiZQpubyBwaGFzZSBjb25mbGlj
dC4KCldoZW4gSSB0cmllZCB0byB1c2UgdGhhdCBBUEkgYmVmb3JlLCBpdCB3YXMgcGFydGx5IGR1
ZSB0byB0aGUgZXJyb3IKYWJvdmUsIGFuZCBwYXJ0bHkgYmVjYXVzZSBJIHJlZmVyZW5jZWQgdGhh
dCBvdGhlciBkaXNwbGF5IGRyaXZlcnMgdmlhCnBjaV9kcml2ZXIucHJvYmUoKSB3b3VsZCBoYXZl
IGl0LCBqdXN0IGluIGNhc2UgSSB1c2VkIGl0LCB3aGljaCB3YXMKcHJvYmFibHkgdGhlIHdyb25n
IGNob2ljZS4KClRoZSByZXNvdXJjZXMgZm9yIHBjaSBiYXIwIGFyZSBhcyBmb2xsb3dzOgpCQVIw
OiBlMDAzMDAwMDAwMC9TWl8zMk0KCjB4MCAgICAgICAgICAgICAgMHg2MDAwMDAgIDB4ZjAwMDAx
YyAgICAxNk0gICAgICAgICAgICAzMk0KKy0tLS0rLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0rLS0t
LS0tLS0tLS0rLS0tKy0tLS0tLS0tLS0tLS0tLS0tKwp8IDJNIHwgc2ltcGxkcm0gfCAgICAgICAg
ICAgfCBJUE1JICAgICAgfCAgICAgfCB2aWRlbyBlbnYgICAgIHwKKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwoKVGhlIG1m
ZCBkcml2ZXIgcmVnaXN0ZXJzIHRoZSBsczJrYm1jLWZyYW1lYnVmZmVyIGFuZCBsczJrLWlwbWkt
c2kKZGV2aWNlcyBhY2NvcmRpbmcgdG8gdGhlIHJlc291cmNlIGFsbG9jYXRpb24gc2hvd24gYWJv
dmUuIEF0IHRoZSBzYW1lCnRpbWUsIHRoZSBsczJrYm1jIGRybSBpcyBib3VuZCB0byB0aGUgcHJl
LWNvbmZpZ3VyZWQg4oCcc2ltcGxkcm3igJ0KcmVzb3VyY2UgaW4gdGhlIGFib3ZlIGZpZ3VyZSwg
d2hpY2ggaXMgcGFzc2VkIHRocm91Z2ggdGhlCmxzMmtibWMtZnJhbWVidWZmZXIgZHJpdmVyLiBJ
biBhZGRpdGlvbiwgdGhlIHJlc29sdXRpb24gaXMgcmVhZCBmcm9tCuKAnHZpZGVvIGVuduKAnSBm
b3IgdGhlIHRpbWUgYmVpbmcsIGFuZCB0aGUgcmVzb2x1dGlvbiBhZGFwdGlvbiBpcyBwbGFubmVk
CnRvIGJlIGFkZGVkIGxhdGVyLgoKPiBCZXN0IHJlZ2FyZHMgVGhvbWFzCj4KPiA+Cj4gPiBBbHNv
LCBzaW5jZSB3ZSBhcmUgdXNpbmcgQk1DIGRpc3BsYXksIHRoZSBkaXNwbGF5IHdpbGwgYmUgZGlz
Y29ubmVjdGVkCj4gPiB3aGVuIEJNQyByZXNldCwgYXQgdGhpcyB0aW1lIHdlIG5lZWQgdG8gcHVz
aCB0aGUgZGlzcGxheSBkYXRhIChjcnRjLAo+ID4gY29ubmVjdG9yLCBldGMuKSBtYW51YWxseSBh
cyBzaG93biBpbiBQYXRjaC00Lgo+ID4KPiA+IFByb2JhYmx5IGl0J3Mgbm90IHRoZSBtb3N0IHN1
aXRhYmxlIHdheSB0byBpbXBsZW1lbnQgaXQuCj4gPgo+ID4+IEJlc3QgcmVnYXJkcwo+ID4+IFRo
b21hcwo+ID4+Cj4gPj4+ICsgICAgIH0sCj4gPj4+ICsgICAgIC5wcm9iZSA9IGxzMmtibWNfcHJv
YmUsCj4gPj4+ICsgICAgIC5yZW1vdmUgPSBsczJrYm1jX3JlbW92ZSwKPiA+Pj4gK307Cj4gPj4+
ICsKPiA+Pj4gK21vZHVsZV9wbGF0Zm9ybV9kcml2ZXIobHMya2JtY19wbGF0Zm9ybV9kcml2ZXIp
Owo+ID4+PiArCj4gPj4+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkRSTSBkcml2ZXIgZm9yIExvb25n
c29uLTJLIEJNQyIpOwo+ID4+PiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwo+ID4+IC0tCj4gPj4g
LS0KPiA+PiBUaG9tYXMgWmltbWVybWFubgo+ID4+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIK
PiA+PiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPiA+PiBGcmFua2Vuc3Ry
YXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQo+ID4+IEdGOiBJdm8gVG90ZXYsIEFu
ZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1vZXJtYW4KPiA+PiBIUkIgMzY4
MDkgKEFHIE51ZXJuYmVyZykKPiA+Pgo+ID4KPgo+IC0tCj4gLS0KPiBUaG9tYXMgWmltbWVybWFu
bgo+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKPiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgKPiBGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFu
eQo+IEdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVu
IE1vZXJtYW4KPiBIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKPgoKCi0tClRoYW5rcy4KQmluYmlu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Blbmlw
bWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29w
ZW5pcG1pLWRldmVsb3Blcgo=
