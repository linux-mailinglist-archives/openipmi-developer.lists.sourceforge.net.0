Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1950479DD5D
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Sep 2023 03:06:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qgEKy-0000TN-1E;
	Wed, 13 Sep 2023 01:06:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <justinstitt@google.com>) id 1qgEKw-0000TH-DE
 for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 01:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=feqfynssC/l//krhpjeeQ39GiVPgRYAKpHDqbOdbEAU=; b=M2v9Rj0z9pHjcJ+JqojWAi2evy
 6pCK/U6/dkibbBNpf9t5JXwNv8ju4qMha+aP6Q1QSjBOB/43X8xUXViDguJ2wuSvFkNF1iszpfTGX
 iyaybxOrO8VkIYjtWk7PIFuOfCGjYREwTOjPkNQniFHGlFlUPny2dRcFrlZ2ttlnygJw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=feqfynssC/l//krhpjeeQ39GiVPgRYAKpHDqbOdbEAU=; b=cpR88olf8CEmU/0/7qDuK0viqg
 Gv/wLObnlH3hGYXAawb1SqmCDZSZCwT3n+ZGb1buQ4t3GCkgf6SdkSWpbnwUIBLEw7U/RqXubFekr
 KOQsJf0wvrtlcdCB1NhUcQrHzLqXsqgE8ORA1ak+ng4AlqzLFE48bKHpV+Idn2cz1oEM=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qgEKs-00025f-Bu for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 01:06:34 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-401da71b83cso70786765e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Sep 2023 18:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1694567184; x=1695171984;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=feqfynssC/l//krhpjeeQ39GiVPgRYAKpHDqbOdbEAU=;
 b=ztFk8CDnDlTWUMCL5kqDc9T6ytPC42uSJBvlvYwCjsyNtE4exChMyg5g+qmX30KdUA
 webcLoXF1uvODzjazLDmPEfaF9qwbxmoCjIeRo9sK4ngexea7BusHEepAhYUKGSQzko1
 q7RhcVg6p/hKKosYUIQwNh9Rtz5lns1drWrqbMYy3woqwY8RKqRgjK6uouNyc8LygfI+
 EnD2LZEt+NDnGubNtx7rCa877+O8iKPPWZx0W8hJQ1ZqorFkJfvHohfYaMYQZqxGADSQ
 GhmMRX+ek5EwGvKcF1EByngvlZpnA2dnXV2tbs54QBsrznre8UJbvsv7A11dB/oty9J9
 e+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694567184; x=1695171984;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=feqfynssC/l//krhpjeeQ39GiVPgRYAKpHDqbOdbEAU=;
 b=Eum8zWt7TRyOgQi1C/g1YF8JWuJSP2bvhsg4qp6jPm0RGlWQuEbqgfAlMzW0/U9jxo
 rPs6P1Da+A/GsTKk/bwStMsJwAdNII6AYPAe32meulDEA7+cDb2wEB161D64xoEOWxfS
 A4h9ESJE6SndVFn3GyUpThzJYxwRejmxO15dDE33MtP11GgmKn7Flav79KhW0prxVkD2
 fxIPsl5PQyvouwynceL/jjP8oDam5ajCvWMPPERE3LS53qh7hLOoSa1CCESr/tNZrILt
 MnptbIEXfFcUg3fdgbNVsGySmT4EGNEOyEWhArpaYbkwyT4zhYXQoT6tCXfxV0HwtkIv
 bTbg==
X-Gm-Message-State: AOJu0YxYsCMYubjE8nGceQYqPd4juOBqpeQZHBfoGU7dC+pM5e9PcDwc
 6oZ8PKiN2fkQLciu1Fd2BT86HKQbjFYTflsU9/laoW88N/KFF1BcgpyCVw==
X-Google-Smtp-Source: AGHT+IEEI2mSwsVZy5CC5hwYoZfqkgLcgNSB0rgqxaqpKpUI9/IOltkOcuY2bxkgO23YTTFgTfB5BMEHLO4Jb0+ELe0=
X-Received: by 2002:a2e:8342:0:b0:2bd:d34:f892 with SMTP id
 l2-20020a2e8342000000b002bd0d34f892mr1155677ljh.3.1694566727074; Tue, 12 Sep
 2023 17:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com>
 <ZQEADYBl0uZ1nX60@mail.minyard.net>
 <CAFhGd8rst8gyJ1FVSsbOADt+h2ECwv7fqh_YNHmn6anV_zGC1A@mail.gmail.com>
In-Reply-To: <CAFhGd8rst8gyJ1FVSsbOADt+h2ECwv7fqh_YNHmn6anV_zGC1A@mail.gmail.com>
Date: Tue, 12 Sep 2023 17:58:36 -0700
Message-ID: <CAFhGd8qc8T3K44N3jUB1q3GmZULwrV+TU+h9SLKsPBq0x3FAGw@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 12, 2023 at 5:55 PM Justin Stitt <justinstitt@google.com>
    wrote: > > On Tue, Sep 12, 2023 at 5:19 PM Corey Minyard <minyard@acm.org>
    wrote: > > > > On Tue, Sep 12, 2023 at 11:43:05PM + [...] 
 
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
                             [209.85.128.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.43 listed in wl.mailspike.net]
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
X-Headers-End: 1qgEKs-00025f-Bu
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

T24gVHVlLCBTZXAgMTIsIDIwMjMgYXQgNTo1NeKAr1BNIEp1c3RpbiBTdGl0dCA8anVzdGluc3Rp
dHRAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIFNlcCAxMiwgMjAyMyBhdCA1OjE54oCv
UE0gQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUs
IFNlcCAxMiwgMjAyMyBhdCAxMTo0MzowNVBNICswMDAwLCBKdXN0aW4gU3RpdHQgd3JvdGU6Cj4g
PiA+IGBzdHJuY3B5YCBpcyBkZXByZWNhdGVkIGZvciB1c2Ugb24gTlVMLXRlcm1pbmF0ZWQgZGVz
dGluYXRpb24gc3RyaW5ncyBbMV0uCj4gPiA+Cj4gPiA+IEluIHRoaXMgY2FzZSwgc3RybmNweSBp
cyBiZWluZyB1c2VkIHNwZWNpZmljYWxseSBmb3IgaXRzIE5VTC1wYWRkaW5nCj4gPiA+IGJlaGF2
aW9yIChhbmQgaGFzIGJlZW4gY29tbWVudGVkIGFzIHN1Y2gpLiBXZSBjYW4gdXNlIGEgbW9yZSBy
b2J1c3QgYW5kCj4gPiA+IGxlc3MgYW1iaWd1b3VzIGludGVyZmFjZSBpbiBgc3Ryc2NweV9wYWRg
IHdoaWNoIG1ha2VzIHRoZSBjb2RlIG1vcmUKPiA+ID4gcmVhZGFibGUgYW5kIGV2ZW4gZWxpbWlu
YXRlcyB0aGUgbmVlZCBmb3IgdGhhdCBjb21tZW50Lgo+ID4gPgo+ID4gPiBMZXQncyBhbHNvIHVz
ZSBgc3RybmxlbmAgaW5zdGVhZCBvZiBgc3RybGVuKClgIHdpdGggYW4gdXBwZXItYm91bmRzCj4g
PiA+IGNoZWNrIGFzIHRoaXMgaXMgaW50cmluc2ljYWxseSBhIHBhcnQgb2YgYHN0cm5sZW5gLgo+
ID4gPgo+ID4gPiBBbHNvIGluY2x1ZGVkIGluIHRoaXMgcGF0Y2ggaXMgYSBzaW1wbGUgMToxIGNo
YW5nZSBvZiBgc3RybmNweWAgdG8KPiA+ID4gYHN0cnNjcHlgIGZvciBpcG1pX3NzaWYuYy4gSWYg
TlVMLXBhZGRpbmcgaXMgd2FudGVkIGhlcmUgYXMgd2VsbCB0aGVuIHdlCj4gPiA+IHNob3VsZCBv
cHQgYWdhaW4gZm9yIGBzdHJzY3B5X3BhZGAuCj4gPiA+Cj4gPiA+IExpbms6IGh0dHBzOi8vd3d3
Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI3N0cm5j
cHktb24tbnVsLXRlcm1pbmF0ZWQtc3RyaW5ncyBbMV0KPiA+ID4gTGluazogaHR0cHM6Ly9naXRo
dWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzkwCj4gPiA+IENjOiBsaW51eC1oYXJkZW5pbmdAdmdl
ci5rZXJuZWwub3JnCj4gPiA+IENjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4K
PiA+ID4gU2lnbmVkLW9mZi1ieTogSnVzdGluIFN0aXR0IDxqdXN0aW5zdGl0dEBnb29nbGUuY29t
Pgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jIHwg
MTEgKysrLS0tLS0tLS0KPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jICAgICAg
IHwgIDIgKy0KPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0
aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9t
c2doYW5kbGVyLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYwo+ID4gPiBp
bmRleCAxODZmMWZlZTc1MzQuLjA0Zjc2MjJjYjcwMyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVy
cy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPiA+ID4gKysrIGIvZHJpdmVycy9jaGFyL2lw
bWkvaXBtaV9tc2doYW5kbGVyLmMKPiA+ID4gQEAgLTUzNzcsMjAgKzUzNzcsMTUgQEAgc3RhdGlj
IHZvaWQgc2VuZF9wYW5pY19ldmVudHMoc3RydWN0IGlwbWlfc21pICppbnRmLCBjaGFyICpzdHIp
Cj4gPiA+Cj4gPiA+ICAgICAgIGogPSAwOwo+ID4gPiAgICAgICB3aGlsZSAoKnApIHsKPiA+ID4g
LSAgICAgICAgICAgICBpbnQgc2l6ZSA9IHN0cmxlbihwKTsKPiA+ID4gKyAgICAgICAgICAgICBp
bnQgc2l6ZSA9IHN0cm5sZW4ocCwgMTEpOwo+ID4gPgo+ID4gPiAtICAgICAgICAgICAgIGlmIChz
aXplID4gMTEpCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBzaXplID0gMTE7Cj4gPiA+ICAg
ICAgICAgICAgICAgZGF0YVswXSA9IDA7Cj4gPiA+ICAgICAgICAgICAgICAgZGF0YVsxXSA9IDA7
Cj4gPiA+ICAgICAgICAgICAgICAgZGF0YVsyXSA9IDB4ZjA7IC8qIE9FTSBldmVudCB3aXRob3V0
IHRpbWVzdGFtcC4gKi8KPiA+ID4gICAgICAgICAgICAgICBkYXRhWzNdID0gaW50Zi0+YWRkcmlu
Zm9bMF0uYWRkcmVzczsKPiA+ID4gICAgICAgICAgICAgICBkYXRhWzRdID0gaisrOyAvKiBzZXF1
ZW5jZSAjICovCj4gPiA+IC0gICAgICAgICAgICAgLyoKPiA+ID4gLSAgICAgICAgICAgICAgKiBB
bHdheXMgZ2l2ZSAxMSBieXRlcywgc28gc3RybmNweSB3aWxsIGZpbGwKPiA+ID4gLSAgICAgICAg
ICAgICAgKiBpdCB3aXRoIHplcm9lcyBmb3IgbWUuCj4gPiA+IC0gICAgICAgICAgICAgICovCj4g
PiA+IC0gICAgICAgICAgICAgc3RybmNweShkYXRhKzUsIHAsIDExKTsKPiA+ID4gKwo+ID4gPiAr
ICAgICAgICAgICAgIHN0cnNjcHlfcGFkKGRhdGErNSwgcCwgMTEpOwo+ID4KPiA+IFRoaXMgaXMg
aW5jb3JyZWN0LCB0aGUgZGVzdGluYXRpb24gc2hvdWxkICpub3QqIGJlIG5pbCB0ZXJtaW5hdGVk
IGlmIHRoZQo+ID4gZGVzdGluYXRpb24gaXMgZnVsbC4gIHN0cm5jcHkgZG9lcyBleGFjdGx5IHdo
YXQgaXMgbmVlZGVkIGhlcmUuCj4KPiBDb3VsZCB3ZSB1c2UgYG1lbWNweV9hbmRfcGFkKClgIGFz
IHRoaXMgbWF0Y2hlcyB0aGUgYmVoYXZpb3Igb2YKPiBzdHJuY3B5IGluIHRoaXMgY2FzZT8gSSB1
bmRlcnN0YW5kIHN0cm5jcHkgd29ya3MgaGVyZSBidXQgSSdtIHJlYWxseQo+IGtlZW4gb24gc251
ZmZpbmcgb3V0IGFsbCBpdHMgdXNlcyAtLSB0cmVld2lkZS4KCl4gSSBtZWFuIHNvbWV0aGluZyBs
aWtlIHRoZSBmb2xsb3dpbmc6CnwgICAgbWVtY3B5X2FuZF9wYWQoZGF0YSs1LCAxMSwgcCwgc2l6
ZSwgJ1wwJyk7CgphcyB0aGlzIGlzIGV4cGxpY2l0IGluIGl0cyBiZWhhdmlvci4KCj4KPiA+Cj4g
PiBBIGNvbW1lbnQgc2hvdWxkIGJlIGFkZGVkIGhlcmUsIHRoaXMgaXMgbm90IHRoZSBmaXJzdCB0
aW1lIHRoaXMgaGFzIGJlZW4KPiA+IGJyb3VnaHQgdXAuCj4gPgo+ID4gPiAgICAgICAgICAgICAg
IHAgKz0gc2l6ZTsKPiA+ID4KPiA+ID4gICAgICAgICAgICAgICBpcG1pX3BhbmljX3JlcXVlc3Rf
YW5kX3dhaXQoaW50ZiwgJmFkZHIsICZtc2cpOwo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
aGFyL2lwbWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+ID4g
PiBpbmRleCAzYjkyMWM3OGJhMDguLmVkY2I4Mzc2NWRjZSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJp
dmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKPiA+ID4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkv
aXBtaV9zc2lmLmMKPiA+ID4gQEAgLTE5NDAsNyArMTk0MCw3IEBAIHN0YXRpYyBpbnQgbmV3X3Nz
aWZfY2xpZW50KGludCBhZGRyLCBjaGFyICphZGFwdGVyX25hbWUsCj4gPiA+ICAgICAgICAgICAg
ICAgfQo+ID4gPiAgICAgICB9Cj4gPiA+Cj4gPiA+IC0gICAgIHN0cm5jcHkoYWRkcl9pbmZvLT5i
aW5mby50eXBlLCBERVZJQ0VfTkFNRSwKPiA+ID4gKyAgICAgc3Ryc2NweShhZGRyX2luZm8tPmJp
bmZvLnR5cGUsIERFVklDRV9OQU1FLAo+ID4gPiAgICAgICAgICAgICAgIHNpemVvZihhZGRyX2lu
Zm8tPmJpbmZvLnR5cGUpKTsKPiA+Cj4gPiBUaGlzIG9uZSBpcyBnb29kLgo+ID4KPiA+IC1jb3Jl
eQo+ID4KPiA+ID4gICAgICAgYWRkcl9pbmZvLT5iaW5mby5hZGRyID0gYWRkcjsKPiA+ID4gICAg
ICAgYWRkcl9pbmZvLT5iaW5mby5wbGF0Zm9ybV9kYXRhID0gYWRkcl9pbmZvOwo+ID4gPgo+ID4g
PiAtLS0KPiA+ID4gYmFzZS1jb21taXQ6IDJkZGUxOGNkMWQ4ZmFjNzM1ODc1ZjJlNDk4N2YxMTgx
N2NjMGJjMmMKPiA+ID4gY2hhbmdlLWlkOiAyMDIzMDkxMi1zdHJuY3B5LWRyaXZlcnMtY2hhci1p
cG1pLWlwbWktZGRhNDdiMzc3M2ZkCj4gPiA+Cj4gPiA+IEJlc3QgcmVnYXJkcywKPiA+ID4gLS0K
PiA+ID4gSnVzdGluIFN0aXR0IDxqdXN0aW5zdGl0dEBnb29nbGUuY29tPgo+ID4gPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1k
ZXZlbG9wZXIK
