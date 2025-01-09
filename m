Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C2FA07636
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Jan 2025 13:56:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVs5H-0008QN-Vp;
	Thu, 09 Jan 2025 12:56:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1tVs5H-0008QH-Eb
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 12:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NEz38DtTOWq2njzGUgwlj9ewqqxd3JoGkoly/wJ2398=; b=Ej/gnq9Dz96MvEMwhR7LDHxt0p
 a41YN+D4etZjzmgqhb1ZEnSZSAqwv91Mm6Vu8ayJN3nbSNZFIozPyU/GBjCclo0VMKGYzYlC7NO50
 /D3fUnLHK4UhwK1YjSLlhtTmDqTTHOFIhyeVKYvRYumI88hAnurqnc845pOULDWs8c9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NEz38DtTOWq2njzGUgwlj9ewqqxd3JoGkoly/wJ2398=; b=NaWv9vKqZ3i6GD5YyEef1kUqar
 VntPKrWSSqdMrPX0Bj2E4YBJQRaj3QYTtWtsEdaSTc5fkseovkWgHcRpi8u0yM4Ymr2kURuw2Gwtj
 xS+d1spLBzOfshp9xpNqli2OgM6eWpJwL5Ki8WmQZAlum9IDP9QTTAxlFsGH0p1CJVHo=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tVs5F-0002OF-0f for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 12:56:22 +0000
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-5d3ecae02beso1084692a12.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 09 Jan 2025 04:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736427374; x=1737032174; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NEz38DtTOWq2njzGUgwlj9ewqqxd3JoGkoly/wJ2398=;
 b=e5LXK1FmyOOYwo6u6hMg2+dela0p+pnQBzMool9eW2sUI1rWulfN0oCwLCAoDCY26K
 rA4ZbH4xIe+yi1ILBnxWVnZqPztYLFl2PlL9DZiqsP4P+zukk2xk5+q/v4A+FPuVPCS2
 tlIZvWNrZIjr3lFqlLhE5mQYqxsjjYL+VCvyUzEx8wwiTcZsxb6nR5YoRXwkX3uSEhuL
 HNxArErWIUQfwjIf1OLptbIw5HYI6xpIe44I8U5gxJwcw3hF0CDQiBWd/MQdu+FrtPjQ
 FWpcm2l21fq/C4UduGXnVk38OkLpZCPhg34lQbvjhd8GPNIz9UyLM/Ybya32NbHigVOE
 u/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736427374; x=1737032174;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NEz38DtTOWq2njzGUgwlj9ewqqxd3JoGkoly/wJ2398=;
 b=LM6hdXKyoGfcm9vcsR220tCRp9bWvYM3xKRRblj7XC2WDr2iQNrH65JXqSZZs52S99
 Op7bXWPZ39rxpy4FxJxgYJlSw4DJrejwjPBmpeum3Ja8rzAO1jaMcUFcvo+InPQJQnoY
 cne7s8s1gx8y06Yd2nRC7tcc5m8bteFZm7rcvP86+OV1QqKzc4XrrJnQwBN4a9mYx0o9
 aBTI8jvSReSfemZdae8Xvyeco8NNk7xcuzCQNasDMXNFbHjE0rDFQJoWAeupRMqs91hn
 +yKaw5hdHieaF3KBxdy+USXZ0hxD8zlCZjZ7i1RF6ZQ+DiQiSw9y/nVIqWAATjUlHybW
 Qjhw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV9nU0OICTS1ReOgipiP+oC6A8jmEDt27hAhhnYV9UQHd2QJdWOZ9IEJQKGMyn7jeH6gvVvkLIEm814Dl0J5pqstSE=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx5WU7dkCiiVdt182UM0RdEz5yOXc5tI+X3uWdDA0AtHcNxTKdq
 Ae760wnyWc3pEs+Ybesy+KFjWeiECH6FQrDwEN187nk9h9EiuppxPQHbW524emth3rerGuyOyKw
 8BmCaNgiS5rExSPhn4rP4J0/f8LI=
X-Gm-Gg: ASbGncuF/xZPxY7qbVWdYyqSBADD0LE9PX5BJ8nwdLREBMj1of33+FLs6ufZ3mu3zVU
 kOR9j8JttE2kQ8V7JbuFA0pc2DC793psVLxPoNOa/
X-Google-Smtp-Source: AGHT+IFVbyh6UP8WoK4yZ81Vp8WbecdQUVFZqRCepllXETdu2aj5PHKb14SluGR7PQhfJwfA5AYrx5mYDmAL84OvN+o=
X-Received: by 2002:a05:6402:278f:b0:5d0:e63e:21c3 with SMTP id
 4fb4d7f45d1cf-5d972e085d7mr5917553a12.14.1736427374081; Thu, 09 Jan 2025
 04:56:14 -0800 (PST)
MIME-Version: 1.0
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <4d62076ee560b35c653a9fbced8d03ef3bdb3005.1735550269.git.zhoubinbin@loongson.cn>
 <3daaaff8-062a-4985-a5bc-8d228314b02e@suse.de>
 <CAMpQs4JcuRhpOyXHxy0ab+D-Wd0itKdb0GiZdTE59_qEpUfyLA@mail.gmail.com>
 <390c14a5-44fe-4328-bcc4-2aa1384e3ad1@suse.de>
 <CAMpQs4L38rDEDYM64jJ6pO+g=M4+etKN9v9+ygzkLY6RQgu94A@mail.gmail.com>
 <392f855c-4474-4e12-8bdc-3baf43d34e13@suse.de>
In-Reply-To: <392f855c-4474-4e12-8bdc-3baf43d34e13@suse.de>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 9 Jan 2025 20:56:01 +0800
X-Gm-Features: AbW1kvb83mK1OYk5q5Dc7_3GC4pnKl8oLMmBZm6vTEKRq7fQQd39kBPeQAPHqu8
Message-ID: <CAMpQs4+_5v23z3bkT4ykPE_PkgZYUTGKM82xcGnyj4US4O4TCw@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas: Sorry for the late reply. On Mon, Jan 6, 2025 at
    10:10 PM Thomas Zimmermann wrote: > > Hi, > > Thanks for the info. > >
   > Am 06.01.25 um 08:03 schrieb Binbin Zhou: > [...] > >> Could you point to
    the exact call that fails [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.46 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.208.46 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1tVs5F-0002OF-0f
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

SGkgVGhvbWFzOgoKU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LgoKT24gTW9uLCBKYW4gNiwgMjAy
NSBhdCAxMDoxMOKAr1BNIFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiB3
cm90ZToKPgo+IEhpLAo+Cj4gVGhhbmtzIGZvciB0aGUgaW5mby4KPgo+Cj4gQW0gMDYuMDEuMjUg
dW0gMDg6MDMgc2NocmllYiBCaW5iaW4gWmhvdToKPiBbLi4uXQo+ID4+IENvdWxkIHlvdSBwb2lu
dCB0byB0aGUgZXhhY3QgY2FsbCB0aGF0IGZhaWxzIHdpdGhpbiBzaW1wbGVkcm0/Cj4gPiBJZiB3
ZSB1c2Ugc2ltcGxlZHJtIGRpcmVjdGx5LCB0aGUgZm9sbG93aW5nIGVycm9yIG9jY3VyczoKPiA+
Cj4gPiBbICAgIDguMjg5ODIzXSBzaW1wbGUtZnJhbWVidWZmZXIgc2ltcGxlLWZyYW1lYnVmZmVy
LjA6IFtkcm1dICpFUlJPUioKPiA+IGNvdWxkIG5vdCBhY3F1aXJlIG1lbW9yeSByYW5nZSBbbWVt
IDB4ZTAwMzEyMDAwMDAtMHhlMDAzMTVmZmZmZiBmbGFncwo+ID4gMHgyMDBdOiAtMTYKPiA+IFsg
ICAgOC4zMTI2ODFdIHNpbXBsZS1mcmFtZWJ1ZmZlciBzaW1wbGUtZnJhbWVidWZmZXIuMDogcHJv
YmUgd2l0aAo+ID4gZHJpdmVyIHNpbXBsZS1mcmFtZWJ1ZmZlciBmYWlsZWQgd2l0aCBlcnJvciAt
MTYKPiA+Cj4gPiBUaGUgcmVhc29uIGZvciB0aGUgZmFpbHVyZTogb3ZlcmxhcHBpbmcgcmVzb3Vy
Y2VzLgo+ID4KPiA+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjEyLjYvc291
cmNlL2RyaXZlcnMvdmlkZW8vYXBlcnR1cmUuYyNMMTc1Cj4KPiBUaGlzIGVycm9yIG1lYW5zIHRo
YXQgdGhlcmUncyBhbHJlYWR5IGFuIGluc3RhbmNlIG9mIHNpbXBsZWRybSBib3VuZCB0bwo+IHRo
ZSBCTUMgZnJhbWVidWZmZXIuIFNvIHlvdSBhbHJlYWR5IGhhdmUgYSB3b3JraW5nIGRpc3BsYXkg
YW5kIHNvbWUKPiBncmFwaGljcyB1bmRlciBMaW51eCB3aXRob3V0IHRoZSBuZXcgZHJpdmVyLCBy
aWdodD8KClllcywgSSBjaGVja2VkIGFnYWluIGFuZCBmb3VuZCB0aGF0IHRoZSAqKmVmaWZiKiog
YmluZHMgdG8gdGhlIEJNQyBmcmFtZWJ1ZmZlci4KCj4KPiBJZiBzbywgd2h5IGRvIHlvdSBuZWVk
IGEgbmV3IGRyaXZlciB0aGF0IGRvZXMgZXhhY3RseSB0aGUgc2FtZSBhcyBzaW1wbGVkcm0/CgpS
ZWdhcmRpbmcgdGhlIG5ldyBkcml2ZXIsIHdlIGltcGxlbWVudGVkIHRoZSBCTUMgZGlzcGxheSBi
YXNlZCBvbgpzaW1wbGVkcm0uIEJ1dCBmaXJzdCB3ZSBuZWVkIHRvIGZpeCB0aGUgaW5pdGlhbGl6
YXRpb24gZmFpbHVyZSBhYm92ZSwKYW5kIG1vcmUgaW1wb3J0YW50bHksIHdlIG5lZWQgdG8gaW1w
bGVtZW50IHRoZSBCTUMgcmVzZXQgZnVuY3Rpb24gWzFdLgoKU3BlY2lmaWNhbGx5LCB3aGVuIHRo
ZSBCTUMgcmVzZXQsIGl0IHdpbGwgY2F1c2UgdGhlIHBjaWUgY29udHJvbGxlciB0bwpkaXNjb25u
ZWN0IGFuZCB0aGUgZGlzcGxheSB3aWxsIGJlIGRpc2Nvbm5lY3RlZCB3aXRoIGl0LiBBZnRlciB0
aGF0LAp3ZSBuZWVkIHRvIHJlc3RvcmUgdGhlIHBjaWUgYmFyIGRhdGEsIGFzIHdlbGwgYXMgcmUt
cHVzaCB0aGUgZGlzcGxheQppbmZvcm1hdGlvbiAobHMya2JtY19wdXNoX2RybV9tb2RlKCkpLgoK
QmFzZWQgb24gdGhpcywgSSB3b3VsZCBsaWtlIHRvIHJld3JpdGUgYSBuZXcgZGlzcGxheSBkcml2
ZXIuCgpbMV06IHBhdGNoKDQvNCkKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2IwYWM4Yjgx
ZmJiODk1NWVkOGFkYTI3YWJhNDIzY2ZmNDVhYWQ5ZjYuMTczNTU1MDI2OS5naXQuemhvdWJpbmJp
bkBsb29uZ3Nvbi5jbi8KPgo+IEJlc3QgcmVnYXJkcwo+IFRob21hcwo+Cj4gPj4+IEJlY2F1c2Ug
YWx0aG91Z2ggd2UgcmVnaXN0ZXIgdGhlIGRyaXZlciBpbiBwbGF0Zm9ybSBmb3JtLCBpdHMgbWVt
b3J5Cj4gPj4+IGJlbG9uZ3MgdG8gcGNpIHNwYWNlIGFuZCB3ZSBjYW4gc2VlIHRoZSBjb3JyZXNw
b25kaW5nIHBjaSBwcm9iZSBhbmQKPiA+Pj4gcmVzb3VyY2UgYWxsb2NhdGlvbiBpbiBQYXRjaC0x
Lgo+ID4+IEkgZG9uJ3QgdW5kZXJzdGFuZC4gR3JhcGhpY3MgbWVtb3J5IGlzIG9mdGVuIGxvY2F0
ZWQgb24gdGhlIFBDSSBidXMuCj4gPj4gV2hhdCBpcyBzbyBzcGVjaWFsIGFib3V0IHRoaXMgb25l
Pwo+ID4+Cj4gPj4+IFRoZXJlZm9yZSwgd2UgbmVlZCB0byB1c2UgYXBlcnR1cmVfcmVtb3ZlX2Nv
bmZsaWN0aW5nX3BjaV9kZXZpY2VzKCkuCj4gPj4gU28gdGhlcmUgaXMgYWxyZWFkeSBhIGRldmlj
ZSB0aGF0IHJlcHJlc2VudHMgdGhlIGdyYXBoaWNzIGNhcmQ/IFRoYXQncwo+ID4+IHdoYXQgeW91
J2QgcmVtb3ZlIGhlcmU/IElmIHlvdSBvbmx5IGFkZCB0aGF0IE1GRCBkZXZpY2UsIHdobyBvd25z
IHRoZQo+ID4+IGZyYW1lYnVmZmVyPyBJZiBpdCdzIHRoZSBQQ0kgZGV2aWNlIGZyb20gcGF0Y2gg
MSAoImxzMmstYm1jIiksIHdoeSBkb2VzCj4gPj4gYXBlcnR1cmVfcmVtb3ZlX2NvbmZsaWN0aW5n
X3BjaV9kZXZpY2VzKCkgbm90IHJlbW92ZSB0aGF0IGRldmljZT8gSSdtCj4gPj4gc29tZXdoYXQg
Y29uZnVzZWQsIGJlY2F1c2UgdGhlIGxvZ2ljIGluIHlvdXIgZHJpdmVyIG1vc3RseSBsb29rcyBs
aWtlIGl0Cj4gPj4gYmluZHMgdG8gYSBwcmUtY29uZmlndXJlZCBmcmFtZWJ1ZmZlciwgYnV0IHNv
bWUgb2YgdGhlIGNvZGUgZG9lc24ndC4KPiA+IFBlcmhhcHMgdGhlIHVzZSBvZiBhcGVydHVyZV9y
ZW1vdmVfY29uZmxpY3RpbmdfcGNpX2RldmljZXMoKSBpcyB3cm9uZywKPiA+IGFzIHRoZXJlIGlz
IG9ubHkgb25lIGRpc3BsYXkgZGV2aWNlIGZvciB0aGUgTFMySyBCTUMgYW5kIHRoZXJlIHdpbGwg
YmUKPiA+IG5vIHBoYXNlIGNvbmZsaWN0Lgo+ID4KPiA+IFdoZW4gSSB0cmllZCB0byB1c2UgdGhh
dCBBUEkgYmVmb3JlLCBpdCB3YXMgcGFydGx5IGR1ZSB0byB0aGUgZXJyb3IKPiA+IGFib3ZlLCBh
bmQgcGFydGx5IGJlY2F1c2UgSSByZWZlcmVuY2VkIHRoYXQgb3RoZXIgZGlzcGxheSBkcml2ZXJz
IHZpYQo+ID4gcGNpX2RyaXZlci5wcm9iZSgpIHdvdWxkIGhhdmUgaXQsIGp1c3QgaW4gY2FzZSBJ
IHVzZWQgaXQsIHdoaWNoIHdhcwo+ID4gcHJvYmFibHkgdGhlIHdyb25nIGNob2ljZS4KPiA+Cj4g
PiBUaGUgcmVzb3VyY2VzIGZvciBwY2kgYmFyMCBhcmUgYXMgZm9sbG93czoKPiA+IEJBUjA6IGUw
MDMwMDAwMDAwL1NaXzMyTQo+ID4KPiA+IDB4MCAgICAgICAgICAgICAgMHg2MDAwMDAgIDB4ZjAw
MDAxYyAgICAxNk0gICAgICAgICAgICAzMk0KPiA+ICstLS0tKy0tLS0tLS0tLS0tLS0tKy0tLS0t
LS0tKy0tLS0tLS0tLS0tKy0tLSstLS0tLS0tLS0tLS0tLS0tLSsKPiA+IHwgMk0gfCBzaW1wbGRy
bSB8ICAgICAgICAgICB8IElQTUkgICAgICB8ICAgICB8IHZpZGVvIGVudiAgICAgfAo+ID4gKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tKwo+ID4KPiA+IFRoZSBtZmQgZHJpdmVyIHJlZ2lzdGVycyB0aGUgbHMya2JtYy1mcmFt
ZWJ1ZmZlciBhbmQgbHMyay1pcG1pLXNpCj4gPiBkZXZpY2VzIGFjY29yZGluZyB0byB0aGUgcmVz
b3VyY2UgYWxsb2NhdGlvbiBzaG93biBhYm92ZS4gQXQgdGhlIHNhbWUKPiA+IHRpbWUsIHRoZSBs
czJrYm1jIGRybSBpcyBib3VuZCB0byB0aGUgcHJlLWNvbmZpZ3VyZWQg4oCcc2ltcGxkcm3igJ0K
PiA+IHJlc291cmNlIGluIHRoZSBhYm92ZSBmaWd1cmUsIHdoaWNoIGlzIHBhc3NlZCB0aHJvdWdo
IHRoZQo+ID4gbHMya2JtYy1mcmFtZWJ1ZmZlciBkcml2ZXIuIEluIGFkZGl0aW9uLCB0aGUgcmVz
b2x1dGlvbiBpcyByZWFkIGZyb20KPiA+IOKAnHZpZGVvIGVuduKAnSBmb3IgdGhlIHRpbWUgYmVp
bmcsIGFuZCB0aGUgcmVzb2x1dGlvbiBhZGFwdGlvbiBpcyBwbGFubmVkCj4gPiB0byBiZSBhZGRl
ZCBsYXRlci4KPiA+Cj4gPj4gQmVzdCByZWdhcmRzIFRob21hcwo+ID4+Cj4gPj4+IEFsc28sIHNp
bmNlIHdlIGFyZSB1c2luZyBCTUMgZGlzcGxheSwgdGhlIGRpc3BsYXkgd2lsbCBiZSBkaXNjb25u
ZWN0ZWQKPiA+Pj4gd2hlbiBCTUMgcmVzZXQsIGF0IHRoaXMgdGltZSB3ZSBuZWVkIHRvIHB1c2gg
dGhlIGRpc3BsYXkgZGF0YSAoY3J0YywKPiA+Pj4gY29ubmVjdG9yLCBldGMuKSBtYW51YWxseSBh
cyBzaG93biBpbiBQYXRjaC00Lgo+ID4+Pgo+ID4+PiBQcm9iYWJseSBpdCdzIG5vdCB0aGUgbW9z
dCBzdWl0YWJsZSB3YXkgdG8gaW1wbGVtZW50IGl0Lgo+ID4+Pgo+ID4+Pj4gQmVzdCByZWdhcmRz
Cj4gPj4+PiBUaG9tYXMKPiA+Pj4+Cj4gPj4+Pj4gKyAgICAgfSwKPiA+Pj4+PiArICAgICAucHJv
YmUgPSBsczJrYm1jX3Byb2JlLAo+ID4+Pj4+ICsgICAgIC5yZW1vdmUgPSBsczJrYm1jX3JlbW92
ZSwKPiA+Pj4+PiArfTsKPiA+Pj4+PiArCj4gPj4+Pj4gK21vZHVsZV9wbGF0Zm9ybV9kcml2ZXIo
bHMya2JtY19wbGF0Zm9ybV9kcml2ZXIpOwo+ID4+Pj4+ICsKPiA+Pj4+PiArTU9EVUxFX0RFU0NS
SVBUSU9OKCJEUk0gZHJpdmVyIGZvciBMb29uZ3Nvbi0ySyBCTUMiKTsKPiA+Pj4+PiArTU9EVUxF
X0xJQ0VOU0UoIkdQTCIpOwo+ID4+Pj4gLS0KPiA+Pj4+IC0tCj4gPj4+PiBUaG9tYXMgWmltbWVy
bWFubgo+ID4+Pj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+ID4+Pj4gU1VTRSBTb2Z0d2Fy
ZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICj4gPj4+PiBGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYx
IE51ZXJuYmVyZywgR2VybWFueQo+ID4+Pj4gR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBB
bmRyZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbgo+ID4+Pj4gSFJCIDM2ODA5IChBRyBOdWVy
bmJlcmcpCj4gPj4+Pgo+ID4+IC0tCj4gPj4gLS0KPiA+PiBUaG9tYXMgWmltbWVybWFubgo+ID4+
IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKPiA+PiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgKPiA+PiBGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2Vy
bWFueQo+ID4+IEdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBC
b3VkaWVuIE1vZXJtYW4KPiA+PiBIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKPiA+Pgo+ID4KPiA+
IC0tCj4gPiBUaGFua3MuCj4gPiBCaW5iaW4KPgo+IC0tCj4gLS0KPiBUaG9tYXMgWmltbWVybWFu
bgo+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKPiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgKPiBGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFu
eQo+IEdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVu
IE1vZXJtYW4KPiBIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKPgoKCi0tIApUaGFua3MuCkJpbmJp
bgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5p
cG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9v
cGVuaXBtaS1kZXZlbG9wZXIK
