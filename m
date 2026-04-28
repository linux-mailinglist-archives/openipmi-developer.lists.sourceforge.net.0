Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGGzDnmK8GloUgEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 12:22:49 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD14482833
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 12:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EbUr9kS+6PhZZ2SPYmAuCOH3MjVXJpeJZJb01jXowNA=; b=FjbXbV7hOyERE29AuW7cz2jJ1N
	IPlTjQRXvR4EJ9KGcqvkKhoAne+ntGvrBHJpMputHRYXwP6V5D4KR9tlSjENV6rw5AEkv18Fcuu2P
	cSck5Hd2S0twaRfZXh5mx7YcZo/g5afSX0cdxlrXfB4DMjZcARHmeBvWvJ/Tko/HpRoM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wHfaR-00078a-04;
	Tue, 28 Apr 2026 10:22:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wHfaP-00078T-H8
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 10:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z7RTu/SVjmIpKmqqy5JfYwWyiAqxOUNJf6elqbre8rs=; b=eClef0VdhyT1KC7TK4CFh65LFv
 1jrzcZvoLbsrnMpExGdoWJpRs33NwOccSm+TBAwm1TZJQBxp6AqtrQ727rfm89OivrNPbWHNfpMqb
 NnwEuxyIaWW3pHicWJTtUMapRiLySLTpYsp6nHCA7fmkqSc5l75IwhHf8nIIqO0WPMAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z7RTu/SVjmIpKmqqy5JfYwWyiAqxOUNJf6elqbre8rs=; b=eNV7k9uDrFfABx6NU5jdMtRAPs
 n/Ew02Rxo63iLD3Jg7tloqSWr6mjyUkIFsfWTdQU3K1uem2Zu/2zeLwxoWqpSEVuCJdWIY8jfFQAm
 TSgWPmaGxpvMCli6FxBMMBGdXykayXYOul9nWlJh8dRq+4XrbpVT64oXkaYn+z6Vhgso=;
Received: from mail-ej1-f54.google.com ([209.85.218.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wHfaO-0003nE-HE for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 10:22:37 +0000
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-ba6b39871a3so1417100466b.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Apr 2026 03:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1777371750;
 x=1777976550; darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=z7RTu/SVjmIpKmqqy5JfYwWyiAqxOUNJf6elqbre8rs=;
 b=qUt5OaitBtIfohMX4T7+vJImsOid1O/Up/07BHOyOgUT1DHNoMUO7hwNXZYiGxnuAJ
 1SEOsqq+4MQ+O/0HVmRs8GKBQ8s9JCKkoYvPQ5Pbrlqzdy0JBt7GAPI0K841uRghuQ+t
 8i7L0vyu1Aj0zPA/UUoUE8h8+ttJRFfBQc7Jhq6eEVdr2SmyRGW7jze1nR5JI/VzdwRR
 qCjfmhWs+f+GwWhCbcEl5kYJhafGhs52WLfZUByO+/W/9vuPtznWsjE3b9RjTZSUdprQ
 4fnfq89b2YY6k1aVOD8tp3r75MC1uD/DJHFVp5zu76qNP3Aqy7AGglQW1AMBLOaf/sDu
 kdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777371750; x=1777976550;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=z7RTu/SVjmIpKmqqy5JfYwWyiAqxOUNJf6elqbre8rs=;
 b=A+2JyuH2SAqgcMGUt/OZeUbpInZ7ADJzkE7tmewcEeUpI2kS60PNoCfUvawGN4LF3Q
 SQbmFTiPic9tC++einUaNeny23sLGiNcOTcXTZ7f+Wz8KlOU0u7YhOJBbpTfWEAlv259
 o9TSOOfpHxKpXjsKjF52pZsRhqu0S7FzDeS2tlMnGL7nEwbYjN6H63Y64SzWatnvgBjj
 1yD+dinUAlbScElCRu/xpoyyCXgX+NfCkxLseNeV4VLy5LxvwDRQJITvtnhOXFPr59dI
 O7wnBxHmDJvzuOgIrIUVT79P19elm15mJV8bb6z2dwLXhxBhiFtiXwpU1sM5gPc3kvhW
 +MdA==
X-Forwarded-Encrypted: i=1;
 AFNElJ979YmojAmBUKEhLVAyOluLNMt139/oa2AV96Tnt0RDiJvLbDvs9xaLwP1tYzJiuguA5P3CZEWO2sUdxPKIkC9VDKw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyvtWFSuRc7uSftyQwc5fb6jOMY11t8HpeiaW6Xp9yC63Jqf7s/
 ULKJ7T0Svr1YpI+DanO8R4mTuLh1L39wz+qws53Qs5Sr9KRK69tjPowjiVV6l6KwRumK39aRfA4
 H03CW
X-Gm-Gg: AeBDieuJwxBi1DIJmvmZCvKcpcVifv7ZiurmbmojYXAOYD6idIx0mywtfR7Z5hYZvvM
 CUxC04LKNl4Q/yyh3CHbbpIqRPLWKgbC1g/GtU5gsbucT2T1sg03x6hWLoGvSjV/a2DKk9IMjfW
 bwp0s2dpmH/LTpVf6OJvFzgSi9TUkBsPl15dsIrEWlMW/aFWfgksNQqoa/zFWmirC1K07LNLwPp
 OCcl3DB0bZheFBczOxYCSw9zWzzCp7y1oOxCgRb8yQ/D2eRbG2Sy/UF9es1MkHP882tzGpMfIfM
 0XMHp73HCb95PmfUVsBKpXsNqyR2QhGRuVBYxWE9KjS+dHaydZzWB24jflNZx9BxdPJSUQwCpbX
 AvN6GflaqQKpNlOqPme2FEROh8Fu72exTvM3kh/igsoyijCe3FdTVQo3qHIjYS7pa4C5sZjqRwA
 nCfjjggDPe5DUYOhapSUVw
X-Received: by 2002:a05:600c:3ba6:b0:489:1baf:8c03 with SMTP id
 5b1f17b1804b1-48a78a43734mr29828535e9.11.1777371348572; 
 Tue, 28 Apr 2026 03:15:48 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:ebe::178:1c4])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48a773b9b5dsm50309915e9.7.2026.04.28.03.15.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 03:15:47 -0700 (PDT)
Date: Tue, 28 Apr 2026 11:15:46 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <afCHrNN-PuXh1WzG@matt-Precision-5490>
References: <20260421132544.2666174-1-corey@minyard.net>
 <20260421132544.2666174-3-corey@minyard.net>
 <aeyJ0fClAWI2lBwL@matt-Precision-5490>
 <ae1VOEhdR0H0rf0a@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae1VOEhdR0H0rf0a@mail.minyard.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Apr 25, 2026 at 06:58:48PM -0500,
 Corey Minyard wrote:
 > > Oh, yeah. > > Moving it to handle_transaction_done() is not ideal, though.
 If > something was spewing receive messages, it would neve [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.218.54 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wHfaO-0003nE-HE
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: Add limits to event and
 receive message requests
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
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Camuso <tcamuso@redhat.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 4AD14482833
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[readmodwrite.com];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

T24gU2F0LCBBcHIgMjUsIDIwMjYgYXQgMDY6NTg6NDhQTSAtMDUwMCwgQ29yZXkgTWlueWFyZCB3
cm90ZToKPiAKPiBPaCwgeWVhaC4KPiAKPiBNb3ZpbmcgaXQgdG8gaGFuZGxlX3RyYW5zYWN0aW9u
X2RvbmUoKSBpcyBub3QgaWRlYWwsIHRob3VnaC4gIElmCj4gc29tZXRoaW5nIHdhcyBzcGV3aW5n
IHJlY2VpdmUgbWVzc2FnZXMsIGl0IHdvdWxkIG5ldmVyIGdldCB0byBldmVudHMsCj4gd2hpY2gg
aXMgd2h5IEkgZGlkIGl0IGxpa2UgSSBkaWQuCj4gCj4gVGhlIGZvbGxvd2luZyBzaG91bGQgZml4
IHRoaXMuICBZb3UgY291bGQgYWxzbyBoYXZlIGRpZmZlcmVudCBsaW1pdHMgZm9yCj4gcmVjZWl2
ZSBtZXNzYWdlcyBhbmQgZXZlbnRzLCBidXQgSSB0aGluayB0aGUgZm9sbG93aW5nIGlzIG1vcmUg
Y2xlYXIuCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5j
IGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9pbnRmLmMKPiBpbmRleCAyYTczOTEyMzI3MGMu
LmU0NmY0MTUwY2ViNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2lu
dGYuYwo+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jCj4gQEAgLTQxMyw4
ICs0MTMsMTAgQEAgc3RhdGljIHZvaWQgc3RhcnRfZ2V0dGluZ19tc2dfcXVldWUoc3RydWN0IHNt
aV9pbmZvICpzbWlfaW5mbykKPiAKPiAgCXN0YXJ0X25ld19tc2coc21pX2luZm8sIHNtaV9pbmZv
LT5jdXJyX21zZy0+ZGF0YSwKPiAgCQkgICAgICBzbWlfaW5mby0+Y3Vycl9tc2ctPmRhdGFfc2l6
ZSk7Cj4gLQlzbWlfaW5mby0+bnVtX3JlcXVlc3RzX2luX2Ffcm93ID0gMDsKPiAtCXNtaV9pbmZv
LT5zaV9zdGF0ZSA9IFNJX0dFVFRJTkdfTUVTU0FHRVM7Cj4gKwlpZiAoc21pX2luZm8tPnNpX3N0
YXRlICE9IFNJX0dFVFRJTkdfTUVTU0FHRVMpIHsKPiArCSAgICBzbWlfaW5mby0+bnVtX3JlcXVl
c3RzX2luX2Ffcm93ID0gMDsKPiArCSAgICBzbWlfaW5mby0+c2lfc3RhdGUgPSBTSV9HRVRUSU5H
X01FU1NBR0VTOwo+ICsJfQo+ICB9Cj4gCj4gIHN0YXRpYyB2b2lkIHN0YXJ0X2dldHRpbmdfZXZl
bnRzKHN0cnVjdCBzbWlfaW5mbyAqc21pX2luZm8pCj4gQEAgLTQyNSw4ICs0MjcsMTAgQEAgc3Rh
dGljIHZvaWQgc3RhcnRfZ2V0dGluZ19ldmVudHMoc3RydWN0IHNtaV9pbmZvICpzbWlfaW5mbykK
PiAKPiAgCXN0YXJ0X25ld19tc2coc21pX2luZm8sIHNtaV9pbmZvLT5jdXJyX21zZy0+ZGF0YSwK
PiAgCQkgICAgICBzbWlfaW5mby0+Y3Vycl9tc2ctPmRhdGFfc2l6ZSk7Cj4gLQlzbWlfaW5mby0+
bnVtX3JlcXVlc3RzX2luX2Ffcm93ID0gMDsKPiAtCXNtaV9pbmZvLT5zaV9zdGF0ZSA9IFNJX0dF
VFRJTkdfRVZFTlRTOwo+ICsJaWYgKHNtaV9pbmZvLT5zaV9zdGF0ZSAhPSBTSV9HRVRUSU5HX0VW
RU5UUykgewo+ICsJICAgIHNtaV9pbmZvLT5udW1fcmVxdWVzdHNfaW5fYV9yb3cgPSAwOwo+ICsJ
ICAgIHNtaV9pbmZvLT5zaV9zdGF0ZSA9IFNJX0dFVFRJTkdfRVZFTlRTOwo+ICsJfQoKVGhhbmtz
LiBEb2VzIHRoaXMgY29ycmVjdGx5IGhhbmRsZSBhIHN0cmVhbSBvZiBtaXhlZCByZWNlaXZlK2V2
ZW50CmZsYWdzLCB0aG91Z2g/IElmIHdlIGJvdW5jZSBiZXR3ZWVuIE1FU1NBR0VTIGFuZCBFVkVO
VFMsIHdvbid0IHdlIGtlZXAKcmVzZXR0aW5nIHRoZSBjb3VudGVyIG9uIGVhY2ggc3RhdGUgdHJh
bnNpdGlvbiBhbmQgbmV2ZXIgaGl0IHRoZSBsaW1pdD8KCkkgd2FzIGFibGUgdG8gY29vayB1cCBh
IHNpbXBsZSByZXBybyBpbiBRZW11IGZvciB0aGlzIGNsYXNzIG9mIGJ1Zy4KCi0tLS0+OC0tLS0K
CmRpZmYgLS1naXQgYS9ody9pcG1pL2lwbWlfYm1jX3NpbS5jIGIvaHcvaXBtaS9pcG1pX2JtY19z
aW0uYwppbmRleCBmZDg3NTQ5MWY1Li4xMjdkYjMwYzAzIDEwMDY0NAotLS0gYS9ody9pcG1pL2lw
bWlfYm1jX3NpbS5jCisrKyBiL2h3L2lwbWkvaXBtaV9ibWNfc2ltLmMKQEAgLTI0OSw2ICsyNDks
MjEgQEAgc3RydWN0IElQTUlCbWNTaW0gewogICAgIHVpbnQ4X3QgZXZ0YnVmWzE2XTsKIAogICAg
IFFUQUlMUV9IRUFEKCwgSVBNSVJjdkJ1ZkVudHJ5KSByY3ZidWZzOworCisgICAgLyoKKyAgICAg
KiBGYXVsdCBpbmplY3Rpb246IHN0aWNreSBFVkVOVF9NU0dfQlVGRkVSX0ZVTEwuCisgICAgICoK
KyAgICAgKiBTaW11bGF0ZXMgYSBCTUMgdGhhdCBjb250aW51b3VzbHkgZ2VuZXJhdGVzIGV2ZW50
cyAoZS5nLiBhZnRlciBhCisgICAgICogY29sZCByZXNldCBjYXVzZXMgc2Vuc29yIHN0YXRlIGNo
YW5nZXMpLiAgT25jZSBhcm1lZCwgZXZlcnkKKyAgICAgKiBSRUFEX0VWRU5UX01TR19CVUZGRVIg
cmV0dXJucyBzdWNjZXNzIGJ1dCBuZXZlciBjbGVhcnMgdGhlCisgICAgICogRVZUX0JVRl9GVUxM
IGZsYWcsIHN0YXJ2aW5nIHdhaXRpbmdfbXNnIGluIHRoZSBTSSBsYXllcidzCisgICAgICogaGFu
ZGxlX2ZsYWdzKCkgbG9vcC4gIFJlcHJvZHVjZXMgdGhlIDUxN20yNzcgLyBLUk4tMTIzMyB3ZWRn
ZS4KKyAgICAgKi8KKyAgICBib29sICAgICBmaV9zdGlja3lfZXZlbnRzOyAgIC8qIGVuYWJsZSB2
aWEgcHJvcGVydHkgKi8KKyAgICB1aW50MzJfdCBmaV9ldnRfYXJtX2FmdGVyOyAgIC8qIGFybSBh
ZnRlciBOIGNvbXBsZXRlZCByZXNwb25zZXMgKi8KKyAgICB1aW50MzJfdCBmaV9ldnRfcnNwX2Nv
dW50OyAgIC8qIHJlc3BvbnNlcyBjb21wbGV0ZWQgc28gZmFyICovCisgICAgYm9vbCAgICAgZmlf
ZXZ0X2FybWVkOyAgICAgICAvKiBmYXVsdCBpcyBhY3RpdmUgKi8KKyAgICB1aW50MzJfdCBmaV9l
dnRfcmVhZF9jb3VudDsgIC8qIFJFQURfRVZFTlRfTVNHX0JVRkZFUiBjYWxscyBzZXJ2ZWQgKi8K
IH07CiAKICNkZWZpbmUgSVBNSV9CTUNfTVNHX0ZMQUdfV0FUQ0hET0dfVElNRU9VVF9NQVNLICAg
ICAgICAoMSA8PCAzKQpAQCAtNDk0LDcgKzUwOSw3IEBAIHN0YXRpYyBpbnQgc2VsX2FkZF9ldmVu
dChJUE1JQm1jU2ltICppYnMsIHVpbnQ4X3QgKmV2ZW50KQogc3RhdGljIGludCBhdHRuX3NldChJ
UE1JQm1jU2ltICppYnMpCiB7CiAgICAgcmV0dXJuIElQTUlfQk1DX01TR19GTEFHX1JDVl9NU0df
UVVFVUVfU0VUKGlicykKLSAgICAgICAgfHwgSVBNSV9CTUNfTVNHX0ZMQUdfRVZUX0JVRl9GVUxM
X1NFVChpYnMpCisgICAgICAgIHx8ICghaWJzLT5maV9ldnRfYXJtZWQgJiYgSVBNSV9CTUNfTVNH
X0ZMQUdfRVZUX0JVRl9GVUxMX1NFVChpYnMpKQogICAgICAgICB8fCBJUE1JX0JNQ19NU0dfRkxB
R19XQVRDSERPR19USU1FT1VUX01BU0tfU0VUKGlicyk7CiB9CiAKQEAgLTc1MCw2ICs3NjUsNDgg
QEAgc3RhdGljIHZvaWQgaXBtaV9zaW1faGFuZGxlX2NvbW1hbmQoSVBNSUJtYyAqYiwKICBvdXQ6
CiAgICAgay0+aGFuZGxlX3JzcChzLCBtc2dfaWQsIHJzcC5idWZmZXIsIHJzcC5sZW4pOwogCisg
ICAgLyoKKyAgICAgKiBGYXVsdCBpbmplY3Rpb246IGNvdW50IGNvbXBsZXRlZCByZXNwb25zZXMg
YW5kIGFybSBzdGlja3kKKyAgICAgKiBFVkVOVF9NU0dfQlVGRkVSX0ZVTEwgYWZ0ZXIgdGhlIGNv
bmZpZ3VyZWQgdGhyZXNob2xkLgorICAgICAqLworICAgIGlmIChpYnMtPmZpX3N0aWNreV9ldmVu
dHMgJiYgIWlicy0+ZmlfZXZ0X2FybWVkKSB7CisgICAgICAgIGlicy0+ZmlfZXZ0X3JzcF9jb3Vu
dCsrOworICAgICAgICBpZiAoaWJzLT5maV9ldnRfcnNwX2NvdW50ID49IGlicy0+ZmlfZXZ0X2Fy
bV9hZnRlcikgeworICAgICAgICAgICAgaWJzLT5maV9ldnRfYXJtZWQgPSB0cnVlOworICAgICAg
ICAgICAgaWJzLT5maV9ldnRfcmVhZF9jb3VudCA9IDA7CisKKyAgICAgICAgICAgIC8qCisgICAg
ICAgICAgICAgKiBTZWVkIHRoZSBldmVudCBidWZmZXIgd2l0aCBhIHN5bnRoZXRpYyBzZW5zb3Ig
ZXZlbnQKKyAgICAgICAgICAgICAqIChzZW5zb3IgdHlwZSAweDAxID0gVGVtcGVyYXR1cmUsIGV2
ZW50IHR5cGUgMHgwMSA9CisgICAgICAgICAgICAgKiB0aHJlc2hvbGQsIGV2ZDEgPSB1cHBlciBj
cml0aWNhbCBnb2luZyBoaWdoKS4KKyAgICAgICAgICAgICAqIFRoaXMgbWF0Y2hlcyB3aGF0IHJl
YWwgQk1DcyBnZW5lcmF0ZSBhZnRlciBhIGNvbGQgcmVzZXQuCisgICAgICAgICAgICAgKi8KKyAg
ICAgICAgICAgIG1lbXNldChpYnMtPmV2dGJ1ZiwgMCwgMTYpOworICAgICAgICAgICAgaWJzLT5l
dnRidWZbMl0gID0gMHgwMjsgLyogU3lzdGVtIGV2ZW50IHJlY29yZCAqLworICAgICAgICAgICAg
aWJzLT5ldnRidWZbN10gID0gaWJzLT5wYXJlbnQuc2xhdmVfYWRkcjsKKyAgICAgICAgICAgIGli
cy0+ZXZ0YnVmWzldICA9IDB4MDQ7IC8qIEZvcm1hdCB2ZXJzaW9uICovCisgICAgICAgICAgICBp
YnMtPmV2dGJ1ZlsxMF0gPSAweDAxOyAvKiBTZW5zb3IgdHlwZTogVGVtcGVyYXR1cmUgKi8KKyAg
ICAgICAgICAgIGlicy0+ZXZ0YnVmWzExXSA9IDB4MDE7IC8qIFNlbnNvciBudW1iZXIgKi8KKyAg
ICAgICAgICAgIGlicy0+ZXZ0YnVmWzEyXSA9IDB4MDE7IC8qIEV2ZW50IHR5cGU6IHRocmVzaG9s
ZCAqLworICAgICAgICAgICAgaWJzLT5ldnRidWZbMTNdID0gMHgwOTsgLyogVXBwZXIgY3JpdGlj
YWwgZ29pbmcgaGlnaCAqLworICAgICAgICAgICAgaWJzLT5ldnRidWZbMTRdID0gMHg1NzsgLyog
VGhyZXNob2xkIHZhbHVlICovCisgICAgICAgICAgICBpYnMtPmV2dGJ1ZlsxNV0gPSAweDAwOyAv
KiBTZXF1ZW5jZSAoaW5jcmVtZW50ZWQgb24gcmVhZHMpICovCisKKyAgICAgICAgICAgIGlicy0+
bXNnX2ZsYWdzIHw9IElQTUlfQk1DX01TR19GTEFHX0VWVF9CVUZfRlVMTDsKKworICAgICAgICAg
ICAgLyogRW5zdXJlIGV2ZW50IG1lc3NhZ2UgYnVmZmVyIGlzIGVuYWJsZWQgaW4gZ2xvYmFsIGVu
YWJsZXMKKyAgICAgICAgICAgICAqIHNvIHRoZSBrZXJuZWwgc2VlcyBpdC4gIEFsc28gZW5hYmxl
IGV2ZW50IGxvZ2dpbmcuCisgICAgICAgICAgICAgKi8KKyAgICAgICAgICAgIGlicy0+Ym1jX2ds
b2JhbF9lbmFibGVzIHw9ICgxIDw8IElQTUlfQk1DX0VWRU5UX01TR19CVUZfQklUKQorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgKDEgPDwgSVBNSV9CTUNfRVZFTlRfTE9H
X0JJVCk7CisKKyAgICAgICAgICAgIGstPnNldF9hdG4ocywgMSwgYXR0bl9pcnFfZW5hYmxlZChp
YnMpKTsKKworICAgICAgICAgICAgZnByaW50ZihzdGRlcnIsICJbRkldIHN0aWNreS1ldmVudHMg
YXJtZWQgYWZ0ZXIgJXUgcmVzcG9uc2VzXG4iLAorICAgICAgICAgICAgICAgICAgICBpYnMtPmZp
X2V2dF9yc3BfY291bnQpOworICAgICAgICB9CisgICAgfQorCiAgICAgbmV4dF90aW1lb3V0KGli
cyk7CiB9CiAKQEAgLTEwMTMsOCArMTA3MCwxNCBAQCBzdGF0aWMgdm9pZCBjbHJfbXNnX2ZsYWdz
KElQTUlCbWNTaW0gKmlicywKIHsKICAgICBJUE1JSW50ZXJmYWNlICpzID0gaWJzLT5wYXJlbnQu
aW50ZjsKICAgICBJUE1JSW50ZXJmYWNlQ2xhc3MgKmsgPSBJUE1JX0lOVEVSRkFDRV9HRVRfQ0xB
U1Mocyk7CisgICAgdWludDhfdCBjbGVhcl9tYXNrID0gY21kWzJdOworCisgICAgaWYgKGlicy0+
ZmlfZXZ0X2FybWVkKSB7CisgICAgICAgIC8qIERvbid0IGFsbG93IGNsZWFyaW5nIEVWVF9CVUZf
RlVMTCB3aGVuIHN0aWNreSBldmVudHMgYWN0aXZlICovCisgICAgICAgIGNsZWFyX21hc2sgJj0g
fklQTUlfQk1DX01TR19GTEFHX0VWVF9CVUZfRlVMTDsKKyAgICB9CiAKLSAgICBpYnMtPm1zZ19m
bGFncyAmPSB+Y21kWzJdOworICAgIGlicy0+bXNnX2ZsYWdzICY9IH5jbGVhcl9tYXNrOwogICAg
IGstPnNldF9hdG4ocywgYXR0bl9zZXQoaWJzKSwgYXR0bl9pcnFfZW5hYmxlZChpYnMpKTsKIH0K
IApAQCAtMTA0MCw3ICsxMTAzLDE5IEBAIHN0YXRpYyB2b2lkIHJlYWRfZXZ0X21zZ19idWYoSVBN
SUJtY1NpbSAqaWJzLAogICAgIGZvciAoaSA9IDA7IGkgPCAxNjsgaSsrKSB7CiAgICAgICAgIHJz
cF9idWZmZXJfcHVzaChyc3AsIGlicy0+ZXZ0YnVmW2ldKTsKICAgICB9Ci0gICAgaWJzLT5tc2df
ZmxhZ3MgJj0gfklQTUlfQk1DX01TR19GTEFHX0VWVF9CVUZfRlVMTDsKKworICAgIGlmIChpYnMt
PmZpX2V2dF9hcm1lZCkgeworICAgICAgICAvKgorICAgICAgICAgKiBTdGlja3kgbW9kZTogcmV0
dXJuIHN1Y2Nlc3MgYnV0IGtlZXAgRVZUX0JVRl9GVUxMIHNldC4KKyAgICAgICAgICogVmFyeSB0
aGUgZXZlbnQgZGF0YSBzbGlnaHRseSBzbyB0aGUga2VybmVsIGRvZXNuJ3QKKyAgICAgICAgICog
ZGUtZHVwbGljYXRlIChpbmNyZW1lbnQgZXZkMyBhcyBhIHNlcXVlbmNlIG51bWJlcikuCisgICAg
ICAgICAqLworICAgICAgICBpYnMtPmZpX2V2dF9yZWFkX2NvdW50Kys7CisgICAgICAgIGlicy0+
ZXZ0YnVmWzE1XSA9ICh1aW50OF90KShpYnMtPmZpX2V2dF9yZWFkX2NvdW50ICYgMHhmZik7Cisg
ICAgICAgIC8qIERvbid0IGNsZWFyIHRoZSBmbGFnIOKAlCBzdGFydmF0aW9uIGNvbnRpbnVlcyAq
LworICAgIH0gZWxzZSB7CisgICAgICAgIGlicy0+bXNnX2ZsYWdzICY9IH5JUE1JX0JNQ19NU0df
RkxBR19FVlRfQlVGX0ZVTEw7CisgICAgfQogICAgIGstPnNldF9hdG4ocywgYXR0bl9zZXQoaWJz
KSwgYXR0bl9pcnFfZW5hYmxlZChpYnMpKTsKIH0KIApAQCAtMjY3MCw2ICsyNzQ1LDggQEAgc3Rh
dGljIGNvbnN0IFByb3BlcnR5IGlwbWlfc2ltX3Byb3BlcnRpZXNbXSA9IHsKICAgICBERUZJTkVf
UFJPUF9TVFJJTkcoImxhbi5uZXRtYXNrIiwgSVBNSUJtY1NpbSwgbGFuLmFyZ19uZXRtYXNrKSwK
ICAgICBERUZJTkVfUFJPUF9TVFJJTkcoImxhbi5kZWZnd19pcGFkZHIiLCBJUE1JQm1jU2ltLCBs
YW4uYXJnX2RlZmd3X2lwYWRkciksCiAgICAgREVGSU5FX1BST1BfTUFDQUREUigibGFuLmRlZmd3
X21hY2FkZHIiLCBJUE1JQm1jU2ltLCBsYW4uZGVmZ3dfbWFjYWRkciksCisgICAgREVGSU5FX1BS
T1BfQk9PTCgiZmlfc3RpY2t5X2V2ZW50cyIsIElQTUlCbWNTaW0sIGZpX3N0aWNreV9ldmVudHMs
IGZhbHNlKSwKKyAgICBERUZJTkVfUFJPUF9VSU5UMzIoImZpX2V2dF9hcm1fYWZ0ZXIiLCBJUE1J
Qm1jU2ltLCBmaV9ldnRfYXJtX2FmdGVyLCA0MCksCiB9OwogCiBzdGF0aWMgdm9pZCBpcG1pX3Np
bV9jbGFzc19pbml0KE9iamVjdENsYXNzICpvYywgY29uc3Qgdm9pZCAqZGF0YSkKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCg==
