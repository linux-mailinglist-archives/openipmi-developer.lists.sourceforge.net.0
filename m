Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ED079DD58
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Sep 2023 03:03:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qgEI6-0008HF-Pr;
	Wed, 13 Sep 2023 01:03:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <justinstitt@google.com>) id 1qgEI5-0008H6-DS
 for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 01:03:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o248tMa332dMkzE2O5OqudHGx+nnrOYejvQiKL4J6eU=; b=lZzROb1t6BtEUj2Wha6/eZZKxK
 zuRxDylRLQhlbw8yuYV4EkcdkhMeUQEROY5TnuE0M03G2AdkTSNi08p2NtEdRE71iLjZ6fUxb7ipw
 qXtEl0hkQnAOntcjCERhAx9LsRzuV/W34gDmFOM+h1arh8pjYdzioDKB5R4mi0Z6xAxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o248tMa332dMkzE2O5OqudHGx+nnrOYejvQiKL4J6eU=; b=SoKchEVHlWyQv3kT/MK/exFYen
 KCDQrzHl1MpBcl7nIByZBNoh7JcxAJNpmXs9LYsS2z3/XsiiHlpI8LI33KM5+EbU7xV70HBIq11nH
 1M27CUW5mqbEG7ZAvXcoUdNXXG/7L9+fS9rtVf79zeLG7gTzCynQ37tbcdspT6Hdkjl0=;
Received: from mail-wr1-f45.google.com ([209.85.221.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qgEHv-002aMO-UD for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 01:03:37 +0000
Received: by mail-wr1-f45.google.com with SMTP id
 ffacd0b85a97d-31f737b8b69so5828813f8f.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Sep 2023 18:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1694567001; x=1695171801;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o248tMa332dMkzE2O5OqudHGx+nnrOYejvQiKL4J6eU=;
 b=CBHy9rEEp7nEzgeC4+sci6dp35rm59y+5v6wwd+s/tjSWu0Lgrg2cipCEYmChujzgT
 Ucwp1A73k6EUwHyL++X4oGheXaIu2t4w0p54Pz9HpDk2wy0MXo5wLFO0CJFNlryabI5S
 cv3qwb1x6uCBM5LIEid7BYmU2E/3sThIhEF/mGqSkcyBmvM8UpRywscd9J5hzSmBaigx
 hhopqnOL8RoXuhFgabP/okGuWbBLrkdjEmcORKpuGPWofkiM20JD7ZgO6CTb+kG755Xo
 7IsXLgkO+MtySlYY7k/RUBjwHsuzoyJJSPGXodTLKrB+rPVRYSuUdhETA9ZEBVVPu8cE
 FNew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694567001; x=1695171801;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=o248tMa332dMkzE2O5OqudHGx+nnrOYejvQiKL4J6eU=;
 b=qtPMBswu9HTyhokAGkizy5dDSpdBFkETAPu9ibovzydAstti5XJoG9MvLVZUQXxoS+
 iWHn+wfO88eoitQJs5M0q5JPBw4Xu5rq1kaKFrcEBGsjA5XRVrVwqiXRJbMudKZfxB4J
 6ZfJrumBT7zHchu6jv1S1u2W/q60cZM6ihovHtKircx7d7B/MDSDfT7H2hJXjxPdqHt0
 yhsJxDP/DyB7LInklsoeCQ0/r/UZEyoTq2VrO2BmnC9qw01BuHujJ5NGYjwEQob2CHfR
 VKSNsPc3I4wU2ctYWw5rqbjkisHc+3nlvNiATae4xeJ15vhhVaOa9j29wtkCGK6bzVic
 8fqA==
X-Gm-Message-State: AOJu0Yzjln2RYjqWkCPY9D4sb17GbEZf3xouvM7vra16pz0nfmcLZqin
 aQwfWNgNKb2lrXmin277Bor2G/U+HOEu9FEOggClnDU3TVHKRj+rzwU=
X-Google-Smtp-Source: AGHT+IEFh5CSqCy6hjjItMyTZXxvitNpkbxyykzfBZoKrhKgNLvKyIwP7A9vI32UIWynY/wUCDXwURlBKgudDpLzKPE=
X-Received: by 2002:a17:906:9441:b0:9a1:f668:dae9 with SMTP id
 z1-20020a170906944100b009a1f668dae9mr647596ejx.33.1694566514000; Tue, 12 Sep
 2023 17:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com>
 <ZQEADYBl0uZ1nX60@mail.minyard.net>
In-Reply-To: <ZQEADYBl0uZ1nX60@mail.minyard.net>
Date: Tue, 12 Sep 2023 17:55:02 -0700
Message-ID: <CAFhGd8rst8gyJ1FVSsbOADt+h2ECwv7fqh_YNHmn6anV_zGC1A@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 12, 2023 at 5:19 PM Corey Minyard <minyard@acm.org>
    wrote: > > On Tue, Sep 12, 2023 at 11:43:05PM +0000, Justin Stitt wrote:
   > > `strncpy` is deprecated for use on NUL-terminated destina [...] 
 
 Content analysis details:   (-15.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
                             welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
                             welcome-list
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
                             Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1qgEHv-002aMO-UD
Subject: Re: [Openipmi-developer] [PATCH] ipmi: refactor deprecated strncpy
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
From: Justin Stitt via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Justin Stitt <justinstitt@google.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBTZXAgMTIsIDIwMjMgYXQgNToxOeKAr1BNIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRA
YWNtLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIFNlcCAxMiwgMjAyMyBhdCAxMTo0MzowNVBNICsw
MDAwLCBKdXN0aW4gU3RpdHQgd3JvdGU6Cj4gPiBgc3RybmNweWAgaXMgZGVwcmVjYXRlZCBmb3Ig
dXNlIG9uIE5VTC10ZXJtaW5hdGVkIGRlc3RpbmF0aW9uIHN0cmluZ3MgWzFdLgo+ID4KPiA+IElu
IHRoaXMgY2FzZSwgc3RybmNweSBpcyBiZWluZyB1c2VkIHNwZWNpZmljYWxseSBmb3IgaXRzIE5V
TC1wYWRkaW5nCj4gPiBiZWhhdmlvciAoYW5kIGhhcyBiZWVuIGNvbW1lbnRlZCBhcyBzdWNoKS4g
V2UgY2FuIHVzZSBhIG1vcmUgcm9idXN0IGFuZAo+ID4gbGVzcyBhbWJpZ3VvdXMgaW50ZXJmYWNl
IGluIGBzdHJzY3B5X3BhZGAgd2hpY2ggbWFrZXMgdGhlIGNvZGUgbW9yZQo+ID4gcmVhZGFibGUg
YW5kIGV2ZW4gZWxpbWluYXRlcyB0aGUgbmVlZCBmb3IgdGhhdCBjb21tZW50Lgo+ID4KPiA+IExl
dCdzIGFsc28gdXNlIGBzdHJubGVuYCBpbnN0ZWFkIG9mIGBzdHJsZW4oKWAgd2l0aCBhbiB1cHBl
ci1ib3VuZHMKPiA+IGNoZWNrIGFzIHRoaXMgaXMgaW50cmluc2ljYWxseSBhIHBhcnQgb2YgYHN0
cm5sZW5gLgo+ID4KPiA+IEFsc28gaW5jbHVkZWQgaW4gdGhpcyBwYXRjaCBpcyBhIHNpbXBsZSAx
OjEgY2hhbmdlIG9mIGBzdHJuY3B5YCB0bwo+ID4gYHN0cnNjcHlgIGZvciBpcG1pX3NzaWYuYy4g
SWYgTlVMLXBhZGRpbmcgaXMgd2FudGVkIGhlcmUgYXMgd2VsbCB0aGVuIHdlCj4gPiBzaG91bGQg
b3B0IGFnYWluIGZvciBgc3Ryc2NweV9wYWRgLgo+ID4KPiA+IExpbms6IGh0dHBzOi8vd3d3Lmtl
cm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI3N0cm5jcHkt
b24tbnVsLXRlcm1pbmF0ZWQtc3RyaW5ncyBbMV0KPiA+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNv
bS9LU1BQL2xpbnV4L2lzc3Vlcy85MAo+ID4gQ2M6IGxpbnV4LWhhcmRlbmluZ0B2Z2VyLmtlcm5l
bC5vcmcKPiA+IENjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KPiA+IFNpZ25l
ZC1vZmYtYnk6IEp1c3RpbiBTdGl0dCA8anVzdGluc3RpdHRAZ29vZ2xlLmNvbT4KPiA+IC0tLQo+
ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jIHwgMTEgKysrLS0tLS0tLS0K
PiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyAgICAgICB8ICAyICstCj4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jIGIvZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPiA+IGluZGV4IDE4NmYxZmVlNzUzNC4uMDRmNzYy
MmNiNzAzIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVy
LmMKPiA+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCj4gPiBAQCAt
NTM3NywyMCArNTM3NywxNSBAQCBzdGF0aWMgdm9pZCBzZW5kX3BhbmljX2V2ZW50cyhzdHJ1Y3Qg
aXBtaV9zbWkgKmludGYsIGNoYXIgKnN0cikKPiA+Cj4gPiAgICAgICBqID0gMDsKPiA+ICAgICAg
IHdoaWxlICgqcCkgewo+ID4gLSAgICAgICAgICAgICBpbnQgc2l6ZSA9IHN0cmxlbihwKTsKPiA+
ICsgICAgICAgICAgICAgaW50IHNpemUgPSBzdHJubGVuKHAsIDExKTsKPiA+Cj4gPiAtICAgICAg
ICAgICAgIGlmIChzaXplID4gMTEpCj4gPiAtICAgICAgICAgICAgICAgICAgICAgc2l6ZSA9IDEx
Owo+ID4gICAgICAgICAgICAgICBkYXRhWzBdID0gMDsKPiA+ICAgICAgICAgICAgICAgZGF0YVsx
XSA9IDA7Cj4gPiAgICAgICAgICAgICAgIGRhdGFbMl0gPSAweGYwOyAvKiBPRU0gZXZlbnQgd2l0
aG91dCB0aW1lc3RhbXAuICovCj4gPiAgICAgICAgICAgICAgIGRhdGFbM10gPSBpbnRmLT5hZGRy
aW5mb1swXS5hZGRyZXNzOwo+ID4gICAgICAgICAgICAgICBkYXRhWzRdID0gaisrOyAvKiBzZXF1
ZW5jZSAjICovCj4gPiAtICAgICAgICAgICAgIC8qCj4gPiAtICAgICAgICAgICAgICAqIEFsd2F5
cyBnaXZlIDExIGJ5dGVzLCBzbyBzdHJuY3B5IHdpbGwgZmlsbAo+ID4gLSAgICAgICAgICAgICAg
KiBpdCB3aXRoIHplcm9lcyBmb3IgbWUuCj4gPiAtICAgICAgICAgICAgICAqLwo+ID4gLSAgICAg
ICAgICAgICBzdHJuY3B5KGRhdGErNSwgcCwgMTEpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBz
dHJzY3B5X3BhZChkYXRhKzUsIHAsIDExKTsKPgo+IFRoaXMgaXMgaW5jb3JyZWN0LCB0aGUgZGVz
dGluYXRpb24gc2hvdWxkICpub3QqIGJlIG5pbCB0ZXJtaW5hdGVkIGlmIHRoZQo+IGRlc3RpbmF0
aW9uIGlzIGZ1bGwuICBzdHJuY3B5IGRvZXMgZXhhY3RseSB3aGF0IGlzIG5lZWRlZCBoZXJlLgoK
Q291bGQgd2UgdXNlIGBtZW1jcHlfYW5kX3BhZCgpYCBhcyB0aGlzIG1hdGNoZXMgdGhlIGJlaGF2
aW9yIG9mCnN0cm5jcHkgaW4gdGhpcyBjYXNlPyBJIHVuZGVyc3RhbmQgc3RybmNweSB3b3JrcyBo
ZXJlIGJ1dCBJJ20gcmVhbGx5CmtlZW4gb24gc251ZmZpbmcgb3V0IGFsbCBpdHMgdXNlcyAtLSB0
cmVld2lkZS4KCj4KPiBBIGNvbW1lbnQgc2hvdWxkIGJlIGFkZGVkIGhlcmUsIHRoaXMgaXMgbm90
IHRoZSBmaXJzdCB0aW1lIHRoaXMgaGFzIGJlZW4KPiBicm91Z2h0IHVwLgo+Cj4gPiAgICAgICAg
ICAgICAgIHAgKz0gc2l6ZTsKPiA+Cj4gPiAgICAgICAgICAgICAgIGlwbWlfcGFuaWNfcmVxdWVz
dF9hbmRfd2FpdChpbnRmLCAmYWRkciwgJm1zZyk7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+ID4g
aW5kZXggM2I5MjFjNzhiYTA4Li5lZGNiODM3NjVkY2UgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+ID4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9z
c2lmLmMKPiA+IEBAIC0xOTQwLDcgKzE5NDAsNyBAQCBzdGF0aWMgaW50IG5ld19zc2lmX2NsaWVu
dChpbnQgYWRkciwgY2hhciAqYWRhcHRlcl9uYW1lLAo+ID4gICAgICAgICAgICAgICB9Cj4gPiAg
ICAgICB9Cj4gPgo+ID4gLSAgICAgc3RybmNweShhZGRyX2luZm8tPmJpbmZvLnR5cGUsIERFVklD
RV9OQU1FLAo+ID4gKyAgICAgc3Ryc2NweShhZGRyX2luZm8tPmJpbmZvLnR5cGUsIERFVklDRV9O
QU1FLAo+ID4gICAgICAgICAgICAgICBzaXplb2YoYWRkcl9pbmZvLT5iaW5mby50eXBlKSk7Cj4K
PiBUaGlzIG9uZSBpcyBnb29kLgo+Cj4gLWNvcmV5Cj4KPiA+ICAgICAgIGFkZHJfaW5mby0+Ymlu
Zm8uYWRkciA9IGFkZHI7Cj4gPiAgICAgICBhZGRyX2luZm8tPmJpbmZvLnBsYXRmb3JtX2RhdGEg
PSBhZGRyX2luZm87Cj4gPgo+ID4gLS0tCj4gPiBiYXNlLWNvbW1pdDogMmRkZTE4Y2QxZDhmYWM3
MzU4NzVmMmU0OTg3ZjExODE3Y2MwYmMyYwo+ID4gY2hhbmdlLWlkOiAyMDIzMDkxMi1zdHJuY3B5
LWRyaXZlcnMtY2hhci1pcG1pLWlwbWktZGRhNDdiMzc3M2ZkCj4gPgo+ID4gQmVzdCByZWdhcmRz
LAo+ID4gLS0KPiA+IEp1c3RpbiBTdGl0dCA8anVzdGluc3RpdHRAZ29vZ2xlLmNvbT4KPiA+CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWkt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5p
cG1pLWRldmVsb3Blcgo=
