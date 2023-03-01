Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C26266A71AB
	for <lists+openipmi-developer@lfdr.de>; Wed,  1 Mar 2023 17:59:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXPnL-00075p-G2;
	Wed, 01 Mar 2023 16:59:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pXPnH-00075i-KE
 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 16:59:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dNgy7xSeBEtA8bD0+1Z2wxIjVbLj36ICDlABDMtsL+c=; b=fXRQPNnjzvzWeRaFCvWAxaQc9D
 PEh8NnE4lAucJuGwEdGqCsKimg2tRR+HkJGW1xGfDkHSeqkc/XzNPEp2qCImFTTHpfkXkJqUqSCcy
 ccu6B6GCVeRJCbre0qkpGDFrWlZUoj0uUo98KKf+fh9qaGCsFN3IUQO/vlBSHvlPH4LI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dNgy7xSeBEtA8bD0+1Z2wxIjVbLj36ICDlABDMtsL+c=; b=T8FkyERTahhJSWj1IpZF+fmMY7
 4fq4Ljhmd7I5FtEKNwvG8QdSYsQwt/Gd0SdmfnqRmBYJ/vhrkbkrhyiIQDn5Avsg1QIDWVgjxAlXj
 fgmwsEURljmDIxMdTgWR0eLt1ivo739PW9CwHt6pyHqbCO4QwEpHmEKp5z+s9ZaDoKpg=;
Received: from mail-qv1-f53.google.com ([209.85.219.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pXPnD-00B1D7-TI for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 16:59:05 +0000
Received: by mail-qv1-f53.google.com with SMTP id o3so9740739qvr.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 01 Mar 2023 08:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677689938;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=dNgy7xSeBEtA8bD0+1Z2wxIjVbLj36ICDlABDMtsL+c=;
 b=KYSbRlBL+WqxgD+XudKGHAISpNRurl2tzSj38nzNbdxfHMaA06UKq3zmd7rMrLo8w2
 qDqGZz74yshm42iG3MZ+z8dbW4IEW9OtCN+8blhTEdDrrgtsfNdI9V4fTI9HJsOjpbJZ
 D2bufZGRf/3gfLfhRFrgodTfRAimPTBqKL3RztCFCOR3xatidOjP0SIVFMEgvSAnR95P
 RUINWzWrTaIxZ7SzmfWfRqQ7R1vlaA2CO3Ne0P0aEPApaXH3KedjcSHchqI2/K52+FEB
 nElAIF43aJvLTcYW04HoeGx92T3EF0jkejkwy6mZpRO4usRd/jms/OvOg64dr63ubKjR
 xUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677689938;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dNgy7xSeBEtA8bD0+1Z2wxIjVbLj36ICDlABDMtsL+c=;
 b=zONKJ1oi/CW8Y3h6a+ZfLkx8sBTJ4WH8dKp3OE4SFFXncKobjHr4qDDD83kRxDSdgG
 EUjtrTtlGaw4Rq98BXP/2wB69YN4oFO3fnthB6VrfVhfFuOIPAuKiveE3MfGRJLu0kpv
 QBthLJ4wajVxTeR8CYCDzx24j5MD+Dxt2zZZqTHwaWfdKNAQfQkdUexlHbOsWRY4eJjl
 QFbpCc4DDRCTmABxsmUApkRdZB+XZF0+/BJJopi+GQXQNHPnlqlK6Ilnk8GWHW324/IE
 zYUpyjK7jjCayo617ab5NB7yIvY05Ily0f4FnVskCjpxNUjMfxioPyBpj/aRkh2oe8Yd
 Pe3g==
X-Gm-Message-State: AO0yUKXHCXjdL/fA3dPFdJNhXcqq3wlgXM8YZvB76+5ji+cvpc4Z+PDH
 YEEhTASuJJfnsJ7rCZIDbQSI52iHmA==
X-Google-Smtp-Source: AK7set9KJUTtAWe217UmmB6z3u8MVpknYpAL2Wu+7qgC6zwoGBO4zWCcU9nrzmeYcIK9/lrH3OK3ZA==
X-Received: by 2002:a05:6214:1244:b0:56f:87f:d92c with SMTP id
 r4-20020a056214124400b0056f087fd92cmr13619545qvv.0.1677689937817; 
 Wed, 01 Mar 2023 08:58:57 -0800 (PST)
Received: from serve.minyard.net ([47.184.176.248])
 by smtp.gmail.com with ESMTPSA id
 n198-20020a3740cf000000b007425dade624sm6491773qka.41.2023.03.01.08.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Mar 2023 08:58:57 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:70d:50f2:24de:3c1e])
 by serve.minyard.net (Postfix) with ESMTPSA id 19EDC180044;
 Wed,  1 Mar 2023 16:58:56 +0000 (UTC)
Date: Wed, 1 Mar 2023 10:58:54 -0600
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <Y/+ETg3dpg+Ui48+@minyard.net>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
 <Y/40CIt6lw+0vjv1@minyard.net>
 <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Feb 28, 2023 at 06:36:17PM +0100, Christian Theune
 wrote: > Thanks, both machines report: > > # cat
 /sys/module/ipmi_msghandler/parameters/panic_op
 > string At this point, I have no idea. I'd have to start adding printks
 into the code and cause crashes to see what is happing. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flyingcircus.io]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pXPnD-00B1D7-TI
Subject: Re: [Openipmi-developer] PANIC / OEM strings missing,
 not sure whether misconfiguration or a bug
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMDY6MzY6MTdQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB3cm90ZToKPiBUaGFua3MsIGJvdGggbWFjaGluZXMgcmVwb3J0Ogo+IAo+ICMgY2F0IC9zeXMv
bW9kdWxlL2lwbWlfbXNnaGFuZGxlci9wYXJhbWV0ZXJzL3BhbmljX29wCj4gc3RyaW5nCgpBdCB0
aGlzIHBvaW50LCBJIGhhdmUgbm8gaWRlYS4gIEknZCBoYXZlIHRvIHN0YXJ0IGFkZGluZyBwcmlu
dGtzIGludG8KdGhlIGNvZGUgYW5kIGNhdXNlIGNyYXNoZXMgdG8gc2VlIHdoYXQgaXMgaGFwcGlu
Zy4KCk1heWJlIHNvbWV0aGluZyBpcyBnZXR0aW5nIGluIHRoZSB3YXkgb2YgdGhlIHBhbmljIG5v
dGlmaWVycyBhbmQgZG9pbmcKc29tZXRoaW5nIHRvIHByZXZlbnQgdGhlIElQTUkgZHJpdmVyIGZy
b20gd29ya2luZy4KCi1jb3JleQoKPiAKPiAKPiA+IE9uIDI4LiBGZWIgMjAyMywgYXQgMTg6MDQs
IENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9oLCBJIGZv
cmdvdC4gIFlvdSBjYW4gbG9vayBhdCBwYW5pY19vcCBpbiAvc3lzL21vZHVsZS9pcG1pX21zZ2hh
bmRsZXIvcGFyYW1ldGVycy9wYW5pY19vcAo+ID4gCj4gPiAtY29yZXkKPiA+IAo+ID4gT24gVHVl
LCBGZWIgMjgsIDIwMjMgYXQgMDU6NDg6MDdQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVuZSB2aWEg
T3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+ID4+IEhpLAo+ID4+IAo+ID4+PiBPbiAyOC4gRmVi
IDIwMjMsIGF0IDE3OjM2LCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+
ID4+PiAKPiA+Pj4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMDI6NTM6MTJQTSArMDEwMCwgQ2hy
aXN0aWFuIFRoZXVuZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+ID4+Pj4gSGksCj4g
Pj4+PiAKPiA+Pj4+IEnigJl2ZSBiZWVuIHRyeWluZyB0byBkZWJ1ZyB0aGUgUEFOSUMgYW5kIE9F
TSBzdHJpbmcgaGFuZGxpbmcgYW5kIGFtIHJ1bm5pbmcgb3V0IG9mIGlkZWFzIHdoZXRoZXIgdGhp
cyBpcyBhIGJ1ZyBvciB3aGV0aGVyIHNvbWV0aGluZyBzbyBzdWJ0bGUgaGFzIGNoYW5nZWQgaW4g
bXkgY29uZmlnIHRoYXQgSeKAmW0ganVzdCBub3Qgc2VlaW5nIGl0Lgo+ID4+Pj4gCj4gPj4+PiAo
Tm90ZTogSeKAmW0gd2lsbGluZyB0byBwYXkgZm9yIGNvbnN1bHRpbmcuKQo+ID4+PiAKPiA+Pj4g
UHJvYmFibHkgbm90IG5lY2Vzc2FyeS4KPiA+PiAKPiA+PiBUaGFua3MhIFRoZSBvZmZlciBhbHdh
eXMgc3RhbmRzLiBJZiB3ZSBzaG91bGQgZXZlciBtZWV0IEnigJltIGFsc28gYWJsZSB0byBwYXkg
aW4gYmV2ZXJhZ2VzLiA7KQo+ID4+IAo+ID4+Pj4gSSBoYXZlIG1hY2hpbmVzIHRoYXQgd2XigJl2
ZSBtb3ZlZCBmcm9tIGFuIG9sZGVyIHNldHVwIChHZW50b28sIChtb3N0bHkpIHZhbmlsbGEga2Vy
bmVsIDQuMTkuMTU3KSB0byBhIG5ld2VyIHNldHVwIChOaXhPUywgKG1vc3RseSkgdmFuaWxsYSBr
ZXJuZWwgNS4xMC4xNTkpIGFuZCBJ4oCZbSBub3cgZXhwZXJpZW5jaW5nIGNyYXNoZXMgdGhhdCBz
ZWVtIHRvIGJlIGtlcm5lbCBwYW5pY3MgYnV0IGRvIG5vdCBnZXQgdGhlIHVzdWFsIG1lc3NhZ2Vz
IGluIHRoZSBJUE1JIFNFTC4KPiA+Pj4gCj4gPj4+IEkganVzdCB0ZXN0ZWQgb24gc3RvY2sgNS4x
MC4xNTkgYW5kIGl0IHdvcmtlZCB3aXRob3V0IGlzc3VlLiAgRXZlcnl0aGluZwo+ID4+PiB5b3Ug
aGF2ZSBiZWxvdyBsb29rcyBvay4KPiA+Pj4gCj4gPj4+IENhbiB5b3UgdGVzdCBieSBjYXVzaW5n
IGEgY3Jhc2ggd2l0aDoKPiA+Pj4gCj4gPj4+IGVjaG8gYyA+L3Byb2Mvc3lzcnEtdHJpZ2dlcgo+
ID4+PiAKPiA+Pj4gYW5kIHNlZSBpZiBpdCB3b3Jrcz8KPiA+PiAKPiA+PiBZZWFoLCBhbHJlYWR5
IHRyaWVkIHRoYXQgYW5kIHVuZm9ydHVuYXRlbHkgdGhhdCBfZG9lc27igJl0XyB3b3JrLgo+ID4+
IAo+ID4+PiBJdCBzb3VuZHMgbGlrZSB5b3UgYXJlIGhhdmluZyBzb21lIHR5cGUgb2YgY3Jhc2gg
dGhhdCB5b3Ugd291bGQgbm9ybWFsbHkKPiA+Pj4gdXNlIHRoZSBJUE1JIGxvZ3MgdG8gZGVidWcu
ICBIb3dldmVyLCB0aGV5IGFyZW4ndCBwZXJmZWN0LCB0aGUgc3lzdGVtCj4gPj4+IGhhcyB0byBz
dGF5IHVwIGxvbmcgZW5vdWdoIHRvIGdldCB0aGVtIGludG8gdGhlIGV2ZW50IGxvZy4KPiA+PiAK
PiA+PiBJIHRoaW5rIHRoZXkgYXJlIHN0YXlpbmcgdXAgbG9uZyBlbm91Z2ggYmVjYXVzZSBhIHBh
bmljIHRyaWdnZXJzIHRoZSAyNTUgc2Vjb25kIGJ1bXAgaW4gdGhlIHdhdGNoZG9nIGFuZCBvbmx5
IHRoZW4gcGFzcyBvbi4gSG93ZXZlciwgaeKAmXZlIGFsc28gbm90aWNlZCB0aGF0IHRoZSBrZXJu
ZWwgX3Nob3VsZF8gYmUgcmVib290aW5nIGFmdGVyIGEgcGFuaWMgbXVjaCBmYXN0ZXIgKGFuZCBu
b3QgcmVseSBvbiB0aGUgd2F0Y2hkb2cpIGFuZCB0aGF0IGRvZXNu4oCZdCBoYXBwZW4gZWl0aGVy
LiAoU29ycnkgdGhpcyBqdXN0IHBvcHBlZCBmcm9tIHRoZSBiYWNrIG9mIG15IGhlYWQpLgo+ID4+
IAo+ID4+PiBJbiB0aGlzIHNpdHVhdGlvbiwgZ2V0dGluZyBhIHNlcmlhbCBjb25zb2xlIChwcm9i
YWJseSB0aHJvdWdoIElQTUkKPiA+Pj4gU2VyaWFsIG92ZXIgTEFOKSBhbmQgZ2V0dGluZyB0aGUg
Y29uc29sZSBvdXRwdXQgb24gYSBjcmFzaCBpcyBwcm9iYWJseQo+ID4+PiB5b3VyIGJlc3Qgb3B0
aW9uLiAgWW91IGNhbiB1c2UgaXBtaXRvb2wgZm9yIHRoaXMsIG9yIEkgaGF2ZSBhIGxpYnJhcnkK
PiA+Pj4gdGhhdCBpcyBhYmxlIHRvIG1ha2UgY29ubmVjdGlvbnMgdG8gc2VyaWFsIHBvcnRzLCBp
bmNsdWRpbmcgdGhyb3VnaCBJUE1JCj4gPj4+IFNvTC4KPiA+PiAKPiA+PiBZdXAuIEJlZW4gdGhl
cmUsIHRvby4gOikKPiA+PiAKPiA+PiBVbmZvcnR1bmF0ZWx5IHdl4oCZcmUgY3VycmVudGx5IGNo
YXNpbmcgc29tZXRoaW5nIHRoYXQgcG9wcyB1cCB2ZXJ5IHJhbmRvbWx5IG9uIHNvbWV3aGF0IG9k
ZCBtYWNoaW5lcyBhbmQgSSBhbHNvIGhhdmUgdGhlIGZlZWxpbmcgdGhhdCBpdOKAmXMgc3lzdGVt
YXRpY2FsbHkgYnJva2VuIHJpZ2h0IG5vdyAoYXMgdGhlIOKAnGVjaG8gY+KAnSBkb2VzbuKAmXQg
d29yaykuCj4gPj4gCj4gPj4gVGhhbmtzIGEgbG90LAo+ID4+IENocmlzdGlhbgo+ID4+IAo+ID4+
IC0tIAo+ID4+IENocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAz
NDUgMjE5NDAxIDAKPiA+PiBGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDC
tyBodHRwczovL2ZseWluZ2NpcmN1cy5pbwo+ID4+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2
MTA4IEhhbGxlIChTYWFsZSkgwrcgRGV1dHNjaGxhbmQKPiA+PiBIUiBTdGVuZGFsIEhSQiAyMTE2
OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3Jv
ZG5pY2sKPiA+PiAKPiA+PiAKPiA+PiAKPiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4+IE9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
PiA+PiBPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gPj4gaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cj4gCj4gTGllYmUgR3LDvMOfZSwKPiBDaHJpc3RpYW4gVGhldW5lCj4gCj4gLS0gCj4gQ2hyaXN0
aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEgMAo+IEZs
eWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8vZmx5aW5nY2ly
Y3VzLmlvCj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFsbGUgKFNhYWxlKSDCtyBE
ZXV0c2NobGFuZAo+IEhSIFN0ZW5kYWwgSFJCIDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBD
aHJpc3RpYW4gVGhldW5lLCBDaHJpc3RpYW4gWmFncm9kbmljawo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
