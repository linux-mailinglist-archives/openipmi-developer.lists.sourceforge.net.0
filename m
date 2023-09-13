Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E6D79E7B2
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Sep 2023 14:12:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qgOjP-0000Rc-EZ;
	Wed, 13 Sep 2023 12:12:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qgOjO-0000RV-9T
 for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 12:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VMfUWi7uEiikg8h+TQM4VgISRlAro9zeV1dQSMavJsQ=; b=jt74mFwzSlRnQHjIb9YlGdl5Yq
 G0apa9d78fU0Lt5hNf3j9pfiDpuoSzM6Hmwvn5c88fQoWceVntv9AKcovIsLtR+IMP74dLAJ8HmBw
 FmM7Bk9Qw2xN28n1Ls+pX1/3SOUGMKIiCZ3LeeCgxysTQcIa7IMql2PmbUTrrtG1TTJA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VMfUWi7uEiikg8h+TQM4VgISRlAro9zeV1dQSMavJsQ=; b=jnfKI8FTonGD+TTiU4+XSqVgmu
 /fXXYLLBjyvymGJTfXgpY+DScCJLYdw22JVb+fDD32WDIJQE40YEPIXAKevM2RYL3lmhrDc98Y3aq
 LGizvwsFHbXLrr/FwBZ4EQvDgTIPWLVtQ7BsWJQ3ll5YgjMt4pF+ulA6/uN6wXliDAD0=;
Received: from mail-yw1-f172.google.com ([209.85.128.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qgOjI-0006Ep-UJ for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 12:12:29 +0000
Received: by mail-yw1-f172.google.com with SMTP id
 00721157ae682-5922380064bso68251767b3.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 13 Sep 2023 05:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694607139; x=1695211939; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=VMfUWi7uEiikg8h+TQM4VgISRlAro9zeV1dQSMavJsQ=;
 b=cJxgzJcVuLLvLpd/CADILQUC6Ntwk8yH9XE/nN2Wcrja9Ba9crucJ47WDnURFNQRmo
 9s7Dh8H6BVgK4od8tdxyCrYyB75IYE0X3T1jpA5359zbETypOZQly2eUrQBJJooNE3U7
 kJwKjE2MlkwSgwrlwtNlxWdtz5/DHhBMgFt2fAgZzPHEgiKxjihRlLApOtj/hOyJAfY2
 HTBxsyxVgmRRBaoptiNdq33uESikwHwwNFNuvGv367C1Btizs0W7nfpGvdtFlycJF01Q
 HI0FT0Le7TZdJpNeGM9Mf2BAZpcNTxU/6NtZfQ6DUpYp8VUxlcNS8j1+1alFuVDDuLj+
 Pguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694607139; x=1695211939;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VMfUWi7uEiikg8h+TQM4VgISRlAro9zeV1dQSMavJsQ=;
 b=PIOdP5DMx6kRtaoEW2uqE+DYYyfih6J8Y1bYcehp1b54kostnlAQP0yGE6bKWqr/+M
 ddvZGsEm0wkl+IdvrVJXa4SF+PBm0B3wqxifU341tNBcdAV6fgd4D2nwQ+lOqQVbGJ8l
 OcPNPLlKVow7/FtOCroISE5Kp+zcdtisV9pelh8PDYAyMBoYbcWrxt2SPqsxmmuC53Ej
 Uiqh8qIHhJq81simxN1EJF4z/9XhGU0wj1YIq+8xH3WNE/q0sPtB3IdZCUg08TuiVFKz
 zOvEzWFCVpG7OVpV8IccVMYKs0XNTuW/6A914jkHz7hmmqO4lfQy42IOkOEwisTfdaWN
 Y+HA==
X-Gm-Message-State: AOJu0YzBPDn8s7XU5QdjjbigoGvb5ff/OsQmEWDrEQm/hVrFT+a/IQvo
 8nKpL2M+M4XZdtm5TMaFlPzDlHl8iw==
X-Google-Smtp-Source: AGHT+IGGq79qc4DvxFGR46q/Y+a7KFcQ0u7ESGCv/o288lPSFM8VvWWrL6gQHQNsUU70Vg4I1LgdOA==
X-Received: by 2002:a0d:d78b:0:b0:576:98e0:32a6 with SMTP id
 z133-20020a0dd78b000000b0057698e032a6mr2153641ywd.14.1694607139304; 
 Wed, 13 Sep 2023 05:12:19 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 i123-20020a0df881000000b0059935151fa1sm3069110ywf.126.2023.09.13.05.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Sep 2023 05:12:18 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:be75:f593:c65b:4578])
 by serve.minyard.net (Postfix) with ESMTPSA id CD9621800E8;
 Wed, 13 Sep 2023 12:12:17 +0000 (UTC)
Date: Wed, 13 Sep 2023 07:12:16 -0500
From: Corey Minyard <minyard@acm.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <ZQGnIHgYigD4K9jo@mail.minyard.net>
References: <20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com>
 <ZQEADYBl0uZ1nX60@mail.minyard.net>
 <CAFhGd8rst8gyJ1FVSsbOADt+h2ECwv7fqh_YNHmn6anV_zGC1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhGd8rst8gyJ1FVSsbOADt+h2ECwv7fqh_YNHmn6anV_zGC1A@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 12, 2023 at 05:55:02PM -0700, Justin Stitt wrote:
    > On Tue, Sep 12, 2023 at 5:19 PM Corey Minyard <minyard@acm.org> wrote:
    > > > > On Tue, Sep 12, 2023 at 11:43:05PM +0000, Justin Stitt [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.172 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.172 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1qgOjI-0006Ep-UJ
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBTZXAgMTIsIDIwMjMgYXQgMDU6NTU6MDJQTSAtMDcwMCwgSnVzdGluIFN0aXR0IHdy
b3RlOgo+IE9uIFR1ZSwgU2VwIDEyLCAyMDIzIGF0IDU6MTnigK9QTSBDb3JleSBNaW55YXJkIDxt
aW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgU2VwIDEyLCAyMDIzIGF0IDEx
OjQzOjA1UE0gKzAwMDAsIEp1c3RpbiBTdGl0dCB3cm90ZToKPiA+ID4gYHN0cm5jcHlgIGlzIGRl
cHJlY2F0ZWQgZm9yIHVzZSBvbiBOVUwtdGVybWluYXRlZCBkZXN0aW5hdGlvbiBzdHJpbmdzIFsx
XS4KPiA+ID4KPiA+ID4gSW4gdGhpcyBjYXNlLCBzdHJuY3B5IGlzIGJlaW5nIHVzZWQgc3BlY2lm
aWNhbGx5IGZvciBpdHMgTlVMLXBhZGRpbmcKPiA+ID4gYmVoYXZpb3IgKGFuZCBoYXMgYmVlbiBj
b21tZW50ZWQgYXMgc3VjaCkuIFdlIGNhbiB1c2UgYSBtb3JlIHJvYnVzdCBhbmQKPiA+ID4gbGVz
cyBhbWJpZ3VvdXMgaW50ZXJmYWNlIGluIGBzdHJzY3B5X3BhZGAgd2hpY2ggbWFrZXMgdGhlIGNv
ZGUgbW9yZQo+ID4gPiByZWFkYWJsZSBhbmQgZXZlbiBlbGltaW5hdGVzIHRoZSBuZWVkIGZvciB0
aGF0IGNvbW1lbnQuCj4gPiA+Cj4gPiA+IExldCdzIGFsc28gdXNlIGBzdHJubGVuYCBpbnN0ZWFk
IG9mIGBzdHJsZW4oKWAgd2l0aCBhbiB1cHBlci1ib3VuZHMKPiA+ID4gY2hlY2sgYXMgdGhpcyBp
cyBpbnRyaW5zaWNhbGx5IGEgcGFydCBvZiBgc3RybmxlbmAuCj4gPiA+Cj4gPiA+IEFsc28gaW5j
bHVkZWQgaW4gdGhpcyBwYXRjaCBpcyBhIHNpbXBsZSAxOjEgY2hhbmdlIG9mIGBzdHJuY3B5YCB0
bwo+ID4gPiBgc3Ryc2NweWAgZm9yIGlwbWlfc3NpZi5jLiBJZiBOVUwtcGFkZGluZyBpcyB3YW50
ZWQgaGVyZSBhcyB3ZWxsIHRoZW4gd2UKPiA+ID4gc2hvdWxkIG9wdCBhZ2FpbiBmb3IgYHN0cnNj
cHlfcGFkYC4KPiA+ID4KPiA+ID4gTGluazogaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRt
bC9sYXRlc3QvcHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjc3RybmNweS1vbi1udWwtdGVybWluYXRl
ZC1zdHJpbmdzIFsxXQo+ID4gPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9p
c3N1ZXMvOTAKPiA+ID4gQ2M6IGxpbnV4LWhhcmRlbmluZ0B2Z2VyLmtlcm5lbC5vcmcKPiA+ID4g
Q2M6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBKdXN0aW4gU3RpdHQgPGp1c3RpbnN0aXR0QGdvb2dsZS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAg
ZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgfCAxMSArKystLS0tLS0tLQo+ID4g
PiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgICAgICAgfCAgMiArLQo+ID4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYyBiL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCj4gPiA+IGluZGV4IDE4NmYxZmVlNzUzNC4u
MDRmNzYyMmNiNzAzIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21z
Z2hhbmRsZXIuYwo+ID4gPiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIu
Ywo+ID4gPiBAQCAtNTM3NywyMCArNTM3NywxNSBAQCBzdGF0aWMgdm9pZCBzZW5kX3BhbmljX2V2
ZW50cyhzdHJ1Y3QgaXBtaV9zbWkgKmludGYsIGNoYXIgKnN0cikKPiA+ID4KPiA+ID4gICAgICAg
aiA9IDA7Cj4gPiA+ICAgICAgIHdoaWxlICgqcCkgewo+ID4gPiAtICAgICAgICAgICAgIGludCBz
aXplID0gc3RybGVuKHApOwo+ID4gPiArICAgICAgICAgICAgIGludCBzaXplID0gc3Rybmxlbihw
LCAxMSk7Cj4gPiA+Cj4gPiA+IC0gICAgICAgICAgICAgaWYgKHNpemUgPiAxMSkKPiA+ID4gLSAg
ICAgICAgICAgICAgICAgICAgIHNpemUgPSAxMTsKPiA+ID4gICAgICAgICAgICAgICBkYXRhWzBd
ID0gMDsKPiA+ID4gICAgICAgICAgICAgICBkYXRhWzFdID0gMDsKPiA+ID4gICAgICAgICAgICAg
ICBkYXRhWzJdID0gMHhmMDsgLyogT0VNIGV2ZW50IHdpdGhvdXQgdGltZXN0YW1wLiAqLwo+ID4g
PiAgICAgICAgICAgICAgIGRhdGFbM10gPSBpbnRmLT5hZGRyaW5mb1swXS5hZGRyZXNzOwo+ID4g
PiAgICAgICAgICAgICAgIGRhdGFbNF0gPSBqKys7IC8qIHNlcXVlbmNlICMgKi8KPiA+ID4gLSAg
ICAgICAgICAgICAvKgo+ID4gPiAtICAgICAgICAgICAgICAqIEFsd2F5cyBnaXZlIDExIGJ5dGVz
LCBzbyBzdHJuY3B5IHdpbGwgZmlsbAo+ID4gPiAtICAgICAgICAgICAgICAqIGl0IHdpdGggemVy
b2VzIGZvciBtZS4KPiA+ID4gLSAgICAgICAgICAgICAgKi8KPiA+ID4gLSAgICAgICAgICAgICBz
dHJuY3B5KGRhdGErNSwgcCwgMTEpOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgc3Ryc2Nw
eV9wYWQoZGF0YSs1LCBwLCAxMSk7Cj4gPgo+ID4gVGhpcyBpcyBpbmNvcnJlY3QsIHRoZSBkZXN0
aW5hdGlvbiBzaG91bGQgKm5vdCogYmUgbmlsIHRlcm1pbmF0ZWQgaWYgdGhlCj4gPiBkZXN0aW5h
dGlvbiBpcyBmdWxsLiAgc3RybmNweSBkb2VzIGV4YWN0bHkgd2hhdCBpcyBuZWVkZWQgaGVyZS4K
PiAKPiBDb3VsZCB3ZSB1c2UgYG1lbWNweV9hbmRfcGFkKClgIGFzIHRoaXMgbWF0Y2hlcyB0aGUg
YmVoYXZpb3Igb2YKPiBzdHJuY3B5IGluIHRoaXMgY2FzZT8gSSB1bmRlcnN0YW5kIHN0cm5jcHkg
d29ya3MgaGVyZSBidXQgSSdtIHJlYWxseQo+IGtlZW4gb24gc251ZmZpbmcgb3V0IGFsbCBpdHMg
dXNlcyAtLSB0cmVld2lkZS4KClN1cmUsIEkgdGhpbmsgIm1lbWNweV9hbmRfcGFkKGRhdGEgKyA1
LCAxMSwgcCwgc2l6ZSwgMCk7IiBzaG91bGQgd29yay4KQW5kIHRoYXQncyBzZWxmLWRvY3VtZW50
aW5nLgoKLWNvcmV5Cgo+IAo+ID4KPiA+IEEgY29tbWVudCBzaG91bGQgYmUgYWRkZWQgaGVyZSwg
dGhpcyBpcyBub3QgdGhlIGZpcnN0IHRpbWUgdGhpcyBoYXMgYmVlbgo+ID4gYnJvdWdodCB1cC4K
PiA+Cj4gPiA+ICAgICAgICAgICAgICAgcCArPSBzaXplOwo+ID4gPgo+ID4gPiAgICAgICAgICAg
ICAgIGlwbWlfcGFuaWNfcmVxdWVzdF9hbmRfd2FpdChpbnRmLCAmYWRkciwgJm1zZyk7Cj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyBiL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc3NpZi5jCj4gPiA+IGluZGV4IDNiOTIxYzc4YmEwOC4uZWRjYjgzNzY1ZGNl
IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+ID4gPiBAQCAtMTk0MCw3ICsxOTQw
LDcgQEAgc3RhdGljIGludCBuZXdfc3NpZl9jbGllbnQoaW50IGFkZHIsIGNoYXIgKmFkYXB0ZXJf
bmFtZSwKPiA+ID4gICAgICAgICAgICAgICB9Cj4gPiA+ICAgICAgIH0KPiA+ID4KPiA+ID4gLSAg
ICAgc3RybmNweShhZGRyX2luZm8tPmJpbmZvLnR5cGUsIERFVklDRV9OQU1FLAo+ID4gPiArICAg
ICBzdHJzY3B5KGFkZHJfaW5mby0+YmluZm8udHlwZSwgREVWSUNFX05BTUUsCj4gPiA+ICAgICAg
ICAgICAgICAgc2l6ZW9mKGFkZHJfaW5mby0+YmluZm8udHlwZSkpOwo+ID4KPiA+IFRoaXMgb25l
IGlzIGdvb2QuCj4gPgo+ID4gLWNvcmV5Cj4gPgo+ID4gPiAgICAgICBhZGRyX2luZm8tPmJpbmZv
LmFkZHIgPSBhZGRyOwo+ID4gPiAgICAgICBhZGRyX2luZm8tPmJpbmZvLnBsYXRmb3JtX2RhdGEg
PSBhZGRyX2luZm87Cj4gPiA+Cj4gPiA+IC0tLQo+ID4gPiBiYXNlLWNvbW1pdDogMmRkZTE4Y2Qx
ZDhmYWM3MzU4NzVmMmU0OTg3ZjExODE3Y2MwYmMyYwo+ID4gPiBjaGFuZ2UtaWQ6IDIwMjMwOTEy
LXN0cm5jcHktZHJpdmVycy1jaGFyLWlwbWktaXBtaS1kZGE0N2IzNzczZmQKPiA+ID4KPiA+ID4g
QmVzdCByZWdhcmRzLAo+ID4gPiAtLQo+ID4gPiBKdXN0aW4gU3RpdHQgPGp1c3RpbnN0aXR0QGdv
b2dsZS5jb20+Cj4gPiA+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
