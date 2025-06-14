Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C64AD9E55
	for <lists+openipmi-developer@lfdr.de>; Sat, 14 Jun 2025 18:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eD3B4J4QKTZahKccr7jVFNDSvGvIvuKaNH3NarzRyB4=; b=Q9Ov+LrpWUYogrG2/W4xIJ/LXa
	GnjxqtJ36Pvs8n5xksXvYssnjHhc0zjP6HIYDYvOTXoapTLmAKj2qNxnUIE7iAp/cq8TKGvBE2N/A
	fciUPRwIqRUu/8XgTroMl8T3GRe/5Pm59shs8ch3jIq+ZaPex2vwUw6lzrbz45cm339A=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uQTq0-0008Fv-Dw;
	Sat, 14 Jun 2025 16:34:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uQTpy-0008Fm-JI
 for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 16:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g0m+Fi2zvj6n2Dtqq2057AKu8Qy58XQ7T17PhQzdBtE=; b=R5sQVSqxMW3qEfqJ+70DAxdL1Q
 CNaQxNMczE3gm1woAv8wV/rVBu1jXTMhLvhzHspfJCJquYsra3x28EmNPI8Pnhze6HctgEhyz6cjJ
 08vor27bjkJgTh2wv7w3UYhxUz4ZcNkfIC4325sP0+vcWaY3vZfcZz3XYETKmfq5L+5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g0m+Fi2zvj6n2Dtqq2057AKu8Qy58XQ7T17PhQzdBtE=; b=ALOfR48UR20YP8DiU0J3Xpq4n3
 KVQTK68vmzbkEaV2UD7ad85Ea7fiwJyIJq4DMs/ocX2WITlCVveOCc48C7N5K2NMV11lqIEphU1zV
 /W5+32Vc8n5WU0DAKOyUsDLujzw7XqVLSH7DIjXgAaWmLQOuPJD8yAGaMCigvIPo1yvM=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uQTpx-0001Fj-PR for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 16:34:34 +0000
Received: by mail-qk1-f178.google.com with SMTP id
 af79cd13be357-7d219896edeso333788885a.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 14 Jun 2025 09:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1749918863; x=1750523663;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=g0m+Fi2zvj6n2Dtqq2057AKu8Qy58XQ7T17PhQzdBtE=;
 b=jOVoKadW3TtnfdwlqfiPgYeoYcdyZUoYFWpZ9hA1B7QJJ6EnHjEvTU77t8CO6jBb0x
 LIOlGxsI7oEpKkSnoOYgU+Pp5AFJ9JBrJhItRauL4Hu97Ai5iGovXLTexmfzE26Pl0y+
 PLfxTBvWAqnVjQpOE2lbttCbURPiZke0875cwYp8BjAEiZ016SpltA0LhqIIhwaPDcVO
 wM6fboRi59gw159Cv+Zr46WhvLO9XBFXwhccuGtukim2sxaoppYfEVcWBV+6iyRGFgo/
 aIH7lsI14YQJhiDFtwJ/V0jEZoyTOdUegeCvDiZkIZF6HCtyCprd3S4slJBvW3bM6EJy
 UkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749918863; x=1750523663;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=g0m+Fi2zvj6n2Dtqq2057AKu8Qy58XQ7T17PhQzdBtE=;
 b=lz92vav3MZVn5Kj9CXwr0LbnxXbsTvS4As/H1wsUceJ5BvhDYxNLUBrQ6Ly0rWjBFy
 fZuqYsaiSaAp+wlAeYV9R9kay3sZmiRaoVMc22SVSrSFt6sq6l07eSobgfHURd0s8eUq
 1PTH6FzhuaCZOie0BzhNzeURZXqII9Zhwrk4cS2kBTthPsBSUvQzxcenjc2yniFT8Gl9
 si0PMisCsLmoQ2E3hFe9rdV+K/Fk4lAgDSt5HZ+/TTj9g/Q85Y/VdkroUjG7Dg75aZy7
 nqzPt6R1T7LYIboemjoF4LVUjTIoIL7sI2qUjFMuUliYSYhsRmoUBwe0TpicOhOM8krs
 28eg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHWb3xaIyQhU2v+be0jHqKAwjB8h1i5C8vP8Jyr+ExLHNttx1ENTvrzUPxAqHMnxbHLJVuqS97vBNM/tF2WDLdmCQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxRRN5Y31N01NmZBuCzBX0doiGH42vqoidCICK7WaNV+0e+6y7P
 421ci9AStAxfckA7zFAEo48WoJg5JfOkDBwXNjPOXZ3lTSC7SjX0m6Y79hXRVBupzNKhJf0caph
 w3JvUrSeEHw==
X-Gm-Gg: ASbGncv79fm3RL9qY3PSeMd+46uEphy/TITjeG1m98sB5Mz5y6hEWx0wABBPccm45oK
 40wv35YQUaY4movSiae2+F8beEIico9uYIAH9KAnjsMlY4iYpIAFmHWzyfDZIto4c8J3LO73rxk
 F4VfKESY6afiD0C4rUVH8eDDSj6tXwgGepxwo1utAnU7TdHLo7LXXt1tXggpXf9jPY6Xdk1ukHw
 QeQD5Qv0S1ND2yulSwTmyrbQqDeoBtZJ1LGH95zi4tt0qSo1Evimzxtihmze9X5X+qfHx2GXBF6
 D9PqDrUj9BMZXoqUHcT8IVby/PKIgLZBeTqQr/WJERib9OTvRkUSCS8EXJujfCsQjA==
X-Google-Smtp-Source: AGHT+IE7Ls/rlOjmSl7wXr5ILZZRY5ShsQdb8vNMhsyPqamNHKhk5KyXG9P4Ek7BnactAUWNaoezZA==
X-Received: by 2002:a05:6870:8286:b0:2d6:b7b:a83 with SMTP id
 586e51a60fabf-2eaf08dc205mr1836510fac.13.1749909582853; 
 Sat, 14 Jun 2025 06:59:42 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f41f:8468:bca8:a5f7])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-2eab897a367sm1147951fac.21.2025.06.14.06.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Jun 2025 06:59:41 -0700 (PDT)
Date: Sat, 14 Jun 2025 08:59:35 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Message-ID: <aE2AR8rj9OEM8TcB@mail.minyard.net>
References: <cover.1749731531.git.zhoubinbin@loongson.cn>
 <aEzFPdYEvbkaH_B5@mail.minyard.net>
 <CAMpQs4L66sXLdj6+ebMXcwq4i+XVi+AmwBbQSx0-EuULNJ5XeQ@mail.gmail.com>
 <aEzqbLHSB6phFNox@mail.minyard.net>
 <CAMpQs4L82x=OhLQJb96ZC4YfT_ZhHcU+zks2r0HMU0Y2fjwsbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMpQs4L82x=OhLQJb96ZC4YfT_ZhHcU+zks2r0HMU0Y2fjwsbg@mail.gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 14, 2025 at 01:25:17PM +0800, Binbin Zhou wrote:
 > Hi Corey: > > Thanks for your detailed suggestions. > > On Sat, Jun 14,
 2025 at 11:20 AM Corey Minyard <corey@minyard.net> wrote: > > > > [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
X-Headers-End: 1uQTpx-0001Fj-PR
Subject: Re: [Openipmi-developer] [PATCH v4 0/3] LoongArch: Add Loongson-2K
 BMC support
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
Reply-To: corey@minyard.net
Cc: jeffbai@aosc.io, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 kexybiscuit@aosc.io, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gU2F0LCBKdW4gMTQsIDIwMjUgYXQgMDE6MjU6MTdQTSArMDgwMCwgQmluYmluIFpob3Ugd3Jv
dGU6Cj4gSGkgQ29yZXk6Cj4gCj4gVGhhbmtzIGZvciB5b3VyIGRldGFpbGVkIHN1Z2dlc3Rpb25z
Lgo+IAo+IE9uIFNhdCwgSnVuIDE0LCAyMDI1IGF0IDExOjIw4oCvQU0gQ29yZXkgTWlueWFyZCA8
Y29yZXlAbWlueWFyZC5uZXQ+IHdyb3RlOgo+ID4KPiA+IE9uIFNhdCwgSnVuIDE0LCAyMDI1IGF0
IDEwOjUwOjM3QU0gKzA4MDAsIEJpbmJpbiBaaG91IHdyb3RlOgo+ID4gPiBIaSBDb3JleToKPiA+
ID4KPiA+ID4gT24gU2F0LCBKdW4gMTQsIDIwMjUgYXQgODo0MeKAr0FNIENvcmV5IE1pbnlhcmQg
PGNvcmV5QG1pbnlhcmQubmV0PiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIEZyaSwgSnVuIDEz
LCAyMDI1IGF0IDAyOjQzOjM4UE0gKzA4MDAsIEJpbmJpbiBaaG91IHdyb3RlOgo+ID4gPiA+ID4g
SGkgYWxsOgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoaXMgcGF0Y2ggc2V0IGludHJvZHVjZXMgdGhl
IExvb25nc29uLTJLIEJNQy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJdCBpcyBhIFBDSWUgZGV2aWNl
IHByZXNlbnQgb24gc2VydmVycyBzaW1pbGFyIHRvIHRoZSBMb29uZ3Nvbi0zIENQVXMuCj4gPiA+
ID4gPiBBbmQgaXQgaXMgYSBtdWx0aWZ1bmN0aW9uYWwgZGV2aWNlIChNRkQpLCBzdWNoIGFzIGRp
c3BsYXkgYXMgYSBzdWItZnVuY3Rpb24KPiA+ID4gPiA+IG9mIGl0Lgo+ID4gPiA+Cj4gPiA+ID4g
SSd2ZSBhc2tlZCB0aGlzIGJlZm9yZSwgYnV0IEkgaGF2ZW4ndCBnb3R0ZW4gYSBhbnN3ZXIsIEkg
ZG9uJ3QgdGhpbmsuCj4gPiA+ID4KPiA+ID4gPiBJcyB0aGlzIHJlYWxseSBhIG11bHRpLWZ1bmN0
aW9uIGRldmljZT8gIElzIHRoZXJlIChvciB3aWxsIHRoZXJlIGJlKQo+ID4gPiA+IGFub3RoZXIg
ZHJpdmVyIHRoYXQgdXNlcyB0aGUgTUZEIGNvZGU/Cj4gPiA+Cj4gPiA+IEkgYW0gdmVyeSBzb3Jy
eSwgSSBtYXkgaGF2ZSBvdmVybG9va2VkIHlvdXIgcHJldmlvdXMgcXVlc3Rpb24uCj4gPiA+Cj4g
PiA+IEFuZCBJIGFsc28gbWF5IG5vdCBoYXZlIGEgdGhvcm91Z2ggdW5kZXJzdGFuZGluZyBvZiBt
dWx0aWZ1bmN0aW9uIGRldmljZXMuCj4gPiA+Cj4gPiA+IFRoZSBMb29uZ3Nvbi0ySyBCTUMgZGV2
aWNlIHByb3ZpZGVzIHR3byBmdW5jdGlvbnM6IGRpc3BsYXkgYW5kIElQTUkuCj4gPiA+IEZvciBk
aXNwbGF5LCB3ZSBwYXNzIHRoZSBzaW1wbGVmYl9wbGF0Zm9ybV9kYXRhIHBhcmFtZXRlciBhbmQg
cmVnaXN0ZXIKPiA+ID4gdGhlIHNpbXBsZWRybSBkZXZpY2UsIGFzIHNob3duIGluIHBhdGNoLTEu
Cj4gPiA+Cj4gPiA+IFRoZXJlZm9yZSwgSSB0aGluayB0aGlzIHNob3VsZCBiZSBjb25zaWRlcmVk
IGEgbXVsdGlmdW5jdGlvbiBkZXZpY2UuCj4gPgo+ID4gT2ssIHRoYXQncyBjbGVhciwgdGhhbmsg
eW91Lgo+ID4KPiA+IEhvd2V2ZXIsIHRoYXQncyBub3QgcmVhbGx5IHZlcnkgY2xlYXIgZnJvbSB0
aGUgcGF0Y2hlcyB5b3UgaGF2ZQo+ID4gcHJvdmlkZWQuICBQYXJ0aWN1bGFybHksIHRoZSAiYm1j
IiBpbiB0aGUgbmFtZSBmcm9tIHBhdGNoIDEgbWFrZXMgb25lCj4gPiB0aGluayB0aGF0IGl0J3Mg
b25seSBhIGJtYy4KPiA+Cj4gPiBUaGUgImJtYyIgbmFtZSBpcyBhbHNvIGEgbGl0dGxlIGNvbmZ1
c2luZzsgdGhlIGRldmljZXMgd2l0aCBhICJibWMiIGluCj4gPiB0aGUgbmFtZSBhcmUgYWxsIHRo
ZSBCTUMgc2lkZSwgYnV0IHlvdSBhcmUgZG9pbmcgYSBob3N0IHNpZGUgZGV2aWNlLgo+ID4KPiA+
IElmIHlvdSBsb29rIGF0IG1vc3Qgb2YgdGhlIG90aGVyIE1GRHMsIHRoZXkgaGF2ZSBhICJjb3Jl
IiBzZWN0aW9uIHRoZW4KPiA+IHZhcmlvdXMgb3RoZXIgcGFydHMgdGhhdCB1c2UgdGhlIGNvcmUu
ICBBbmQgcG9zc2libHkgcGFydHMgaW4gb3RoZXIKPiA+IGRpcmVjdG9yaWVzIGZvciBpbmRpdmlk
dWFsIGZ1bmN0aW9ucy4gIEkgdGhpbmsgeW91IG5lZWQgdG8gZG8gdGhlIHNhbWUKPiA+IGRlc2ln
bi4gIEhhdmUgYSAiY29yZSIgc2VjdGlvbiB0aGF0IGJvdGggdGhlIGRpc3BsYXkgYW5kIGJtYyB1
c2UsIHRoZW4gYQo+ID4gc2VwYXJhdGUgZGlzcGxheSBhbmQgYm1jIGRyaXZlci4KPiAKPiBJZiBp
dCBjYW4gYmUgcmVjb25zdHJ1Y3RlZCBpbiB0aGlzIHdheSwgaXQgc2hvdWxkIGJlIGNsZWFyZXIu
Cj4gCj4gSG93ZXZlciwgdGhlcmUgaXMgYSBrZXkgcG9pbnQgaW4gbXkgbWluZDogaWYgdGhlIGRp
c3BsYXkgYW5kIElQTUkgYXJlCj4gc2VwYXJhdGVkIGludG8gdHdvIHBhcnRzLCB0aGV5IHNob3Vs
ZCBhdCBsZWFzdCBiZSBhYmxlIHRvIGJlIHByb2JlZAo+IHNlcGFyYXRlbHksIGJ1dCBpbiBmYWN0
IHRoZXkgYmVsb25nIHRvIHRoZSBzYW1lIFBDSS1FIGRldmljZSwganVzdAo+IGFsbG9jYXRlZCBk
aWZmZXJlbnQgcmVzb3VyY2UgaW50ZXJ2YWxzLgo+IAo+IHN0YXRpYyBzdHJ1Y3QgcGNpX2Rldmlj
ZV9pZCBsczJrX2JtY19kZXZpY2VzW10gPSB7Cj4gICAgICAgIHsgUENJX0RFVklDRShQQ0lfVkVO
RE9SX0lEX0xPT05HU09OLCAweDFhMDUpIH0sCj4gICAgICAgIHsgfQo+IH07Cj4gTU9EVUxFX0RF
VklDRV9UQUJMRShwY2ksIGxzMmtfYm1jX2RldmljZXMpOwo+IAo+IEknbSBub3Qgc3VyZSBpZiBt
eSB1bmRlcnN0YW5kaW5nIGlzIGNvcnJlY3Q/CgpZb3UgYXJlIGFscmVhZHkgZG9pbmcgdGhpcywg
aXQgYXBwZWFycy4gIEkgc3BlbnQgYSBsaXR0bGUgdGltZSB0byBsZWFybgpob3cgdGhpcyB3b3Jr
cy4gIFlvdSBhcmUgdXNpbmcgdGhlIHN0YW5kYXJkIGZyYW1lIGJ1ZmZlciBkcml2ZXIsIHNvIG5v
CnNwZWNpYWwgZHJpdmVyIGlzIHJlcXVpcmVkIHRoZXJlIChwZXIgZWFybGllciBkaXNjdXNzaW9u
cykuICBBbmQgeW91IGFyZQpyZWdpc3RlcmluZyBpdCBhbGwgYXMgYW4gTUZEIGRldmljZSwgc28g
dGhlIGRpc3BsYXkgYnVmZmVyIGFuZCBJUE1JCmludGVyZmFjZSB3aWxsIHBpY2sgaXQgdXAgdGhl
cmUuCgpTbyBmcm9tIGEgZGVzaWduIHBvaW50IG9mIHZpZXcgdGhpcyBhbGwgbG9va3MgZ29vZC4K
ClRoZSBJUE1JIGludGVyZmFjZSBuZWVkcyB0byBiZSBzZXBhcmF0ZWx5IHNlbGVjdGFibGUgZnJv
bSB0aGUgbWFpbiBtZmQKZGV2aWNlIGluIHRoZSBLY29uZmlncy4gIEFkZCBhbiBJUE1JX0xTMksg
Y29uZmlnIGluIHRoZSBJUE1JIHNlY3Rpb24KdGhhdCBlbmFibGVzIHRoZSBJUE1JIGludGVyZmFj
ZSBhbmQgc2VsZWN0cyBNRkRfTFMyS19CTUMuICBBbmQgYm90aApjb25maWdzIG5lZWQgdG8gYmUg
dHJpc3RhdGUsIG5vdCBib29sLCBzbyB0aGV5IGNhbiBiZSBtb2R1bGVzLgoKSSBkb24ndCBrbm93
IGlmIHlvdSB3YW50IHRvIG1ha2UgdGhlIGRpc3BsYXkgcGFydCBzbyBpdCBjYW4gYmUgZW5hYmxl
ZApzZXBhcmF0ZWx5LCBJJ20gbm90IHN1cmUgaG93IHlvdSB3b3VsZCBkbyB0aGF0LiAgQnV0IHRo
YXQncyBub3QgbXkKY29uY2VybiwgcmVhbGx5LgoKVGhhbmtzLAoKLWNvcmV5Cgo+IAo+ID4KPiA+
IFRoYXQgd2F5LCB5b3UgY2FuIHVzZSB0aGUgZGlzcGxheSB3aXRob3V0IHRoZSBJUE1JIGludGVy
ZmFjZSwgb3IgdGhlCj4gPiBJUE1JIGludGVyZmFjZSB3aXRob3V0IHRoZSBkaXNwbGF5Lgo+ID4K
PiA+IEkgd291bGQgbGlrZSB0byBzZWU6Cj4gPgo+ID4gKiBBIGNvcmUgbWZkIGRldmljZSBuYW1l
ZCBsczJrLWNvcmUuYyB0aGF0IGhhcyB0aGUgY29yZSBmdW5jdGlvbnMuCj4gPiAgIEl0IHdvdWxk
IGhhdmUgaXRzIG93biBjb25maWcgaXRlbSAoTUZEX0xTMkspIHRoYXQgd291bGQgYmUKPiA+ICAg
c2VsZWN0ZWQgaWYgZWl0aGVyIHRoZSBkaXNwbGF5IG9yIElQTUkgZGV2aWNlIGlzIGVuYWJsZWQu
Cj4gPgo+ID4gKiBBIHNlcGFyYXRlIGRpc3BsYXkgZGV2aWNlIGluIGl0cyBvd24gZmlsZSB3aXRo
IGl0cyBvd24gY29uZmlnIGl0ZW0uCj4gPiAgIFRoaXMgaXNuJ3QgbXkgYXJlYSwgc28gSSdtIG5v
dCBzdXJlIHdoZXJlIHRoaXMgc2hvdWxkIGdvLgo+ID4KPiA+ICogVGhlIElQTUkgZGV2aWNlIGlu
IHRoZSBpcG1pIGRpcmVjdG9yeSBuYW1lZCBpcG1pX2xzMmsuYywgYWdhaW4KPiA+ICAgd2l0aCBp
dCdzIG93biBjb25maWcgaXRlbSAoSVBNSV9MUzJLKS4KPiA+Cj4gPiBEb2VzIHRoYXQgbWFrZSBz
ZW5zZT8gIEkgZG9uJ3Qgd2FudCB0byBtYWtlIHRoaW5ncyB0b28gaGFyZCwgYnV0IHRoYXQncwo+
ID4gdGhlIHdheSBwcmV0dHkgbXVjaCBldmVyeXRoaW5nIGVsc2UgaXMgZG9uZSBvbiBNRkRzLgo+
ID4KPiA+IFRoYW5rcywKPiA+Cj4gPiAtY29yZXkKPiA+Cj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBJ
ZiBub3RoaW5nIGVsc2UgaXMgZ29pbmcgdG8gdXNlIHRoaXMsIHRoZW4gaXQncyByZWFsbHkgbm90
IGEKPiA+ID4gPiBtdWx0aS1mdW5jdGlvbiBkZXZpY2UgYW5kIGFsbCB0aGUgY29kZSBjYW4gZ28g
aW50byB0aGUgSVBNSSBkaXJlY3RvcnkuCj4gPiA+ID4gVGhhdCBzaW1wbGlmaWVzIG1haW50ZW5h
bmNlLgo+ID4gPiA+Cj4gPiA+ID4gSWYgaXQgaXMgYSBtdWx0aS1mdW5jdGlvbiBkZXZpY2UsIHRo
ZW4gSSB3YW50IHR3byBzZXBhcmF0ZSBLY29uZmlnCj4gPiA+ID4gaXRlbXMsIG9uZSBmb3IgdGhl
IE1GRCBhbmQgb25lIGZvciB0aGUgSVBNSSBwb3J0aW9uLiAgVGhhdCB3YXkgaXQncwo+ID4gPiA+
IHJlYWR5IGFuZCB5b3UgZG9uJ3QgaGF2ZSB0byBib3RoZXIgYWJvdXQgdGhlIElQTUkgcG9ydGlv
biB3aGVuCj4gPiA+ID4gYWRkaW5nIHRoZSBvdGhlciBkZXZpY2UuCj4gPiA+ID4KPiA+ID4gPiBB
bGwgZWxzZSBsb29rcyBnb29kLCBJIHRoaW5rLgo+ID4gPiA+Cj4gPiA+ID4gLWNvcmV5Cj4gPiA+
ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBGb3IgSVBNSSwgYWNjb3JkaW5nIHRvIHRoZSBleGlzdGlu
ZyBkZXNpZ24sIHdlIHVzZSBzb2Z0d2FyZSBzaW11bGF0aW9uIHRvCj4gPiA+ID4gPiBpbXBsZW1l
bnQgdGhlIEtDUyBpbnRlcmZhY2UgcmVnaXN0ZXJzOiBTdGF1dHMvQ29tbWFuZC9EYXRhX091dC9E
YXRhX0luLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEFsc28gc2luY2UgYm90aCBob3N0IHNpZGUgYW5k
IEJNQyBzaWRlIHJlYWQgYW5kIHdyaXRlIGtjcyBzdGF0dXMsIHdlIHVzZQo+ID4gPiA+ID4gZmlm
byBwb2ludGVyIHRvIGVuc3VyZSBkYXRhIGNvbnNpc3RlbmN5Lgo+ID4gPiA+ID4KPiA+ID4gPiA+
IEZvciB0aGUgZGlzcGxheSwgYmFzZWQgb24gc2ltcGxlZHJtLCB0aGUgcmVzb2x1dGlvbiBpcyBy
ZWFkIGZyb20gYSBmaXhlZAo+ID4gPiA+ID4gcG9zaXRpb24gaW4gdGhlIEJNQyBzaW5jZSB0aGUg
aGFyZHdhcmUgZG9lcyBub3Qgc3VwcG9ydCBhdXRvLWRldGVjdGlvbgo+ID4gPiA+ID4gb2YgdGhl
IHJlc29sdXRpb24uIE9mIGNvdXJzZSwgd2Ugd2lsbCB0cnkgdG8gc3VwcG9ydCBtdWx0aXBsZQo+
ID4gPiA+ID4gcmVzb2x1dGlvbnMgbGF0ZXIsIHRocm91Z2ggYSB2Ymlvcy1saWtlIGFwcHJvYWNo
Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IEVzcGVjaWFsbHksIGZvciB0aGUgQk1DIHJlc2V0IGZ1bmN0
aW9uLCBzaW5jZSB0aGUgZGlzcGxheSB3aWxsIGJlCj4gPiA+ID4gPiBkaXNjb25uZWN0ZWQgd2hl
biBCTUMgcmVzZXQsIHdlIG1hZGUgYSBzcGVjaWFsIHRyZWF0bWVudCBvZiByZS1wdXNoLgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEJhc2VkIG9uIHRoaXMsIEkgd2lsbCBwcmVzZW50IGl0IGluIGZvdXIg
cGF0Y2hlczoKPiA+ID4gPiA+IHBhdGNoLTE6IEJNQyBkZXZpY2UgUENJIHJlc291cmNlIGFsbG9j
YXRpb24uCj4gPiA+ID4gPiBwYXRjaC0yOiBCTUMgcmVzZXQgZnVuY3Rpb24gc3VwcG9ydAo+ID4g
PiA+ID4gcGF0Y2gtMzogSVBNSSBpbXBsZW1lbnRhdGlvbgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRo
YW5rcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiAtLS0tLS0tCj4gPiA+ID4gPiBWNDoKPiA+ID4gPiA+
IC0gQWRkIFJldmlld2VkLWJ5IHRhZzsKPiA+ID4gPiA+IC0gQ2hhbmdlIHRoZSBvcmRlciBvZiB0
aGUgcGF0Y2hlcy4KPiA+ID4gPiA+IFBhdGNoICgxLzMpOgo+ID4gPiA+ID4gICAtIEZpeCBidWls
ZCB3YXJuaW5nIGJ5IGxrcDogS2NvbmZpZyB0cmlzdGF0ZSAtPiBib29sCj4gPiA+ID4gPiAgICAg
LSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1MzEyMDIyLlFtRm1HRTFGLWxrcEBp
bnRlbC5jb20vCj4gPiA+ID4gPiAgLSBVcGRhdGUgY29tbWl0IG1lc3NhZ2U7Cj4gPiA+ID4gPiAg
LSBNb3ZlIE1GRF9MUzJLX0JNQyBhZnRlciBNRkRfSU5URUxfTTEwX0JNQ19QTUNJIGluIEtjb25m
aWcgYW5kCj4gPiA+ID4gPiAgICBNYWtlZmlsZS4KPiA+ID4gPiA+IFBhdGNoICgyLzMpOgo+ID4g
PiA+ID4gICAtIFJlbW92ZSB1bm5lY2Vzc2FyeSBuZXdsaW5lczsKPiA+ID4gPiA+ICAgLSBSZW5h
bWUgbHMya19ibWNfY2hlY2tfcGNpZV9jb25uZWN0ZWQoKSB0bwo+ID4gPiA+ID4gICAgIGxzMmtf
Ym1jX3BjaWVfaXNfY29ubmVjdGVkKCk7Cj4gPiA+ID4gPiAgIC0gVXBkYXRlIGNvbW1lbnQgbWVz
c2FnZS4KPiA+ID4gPiA+IFBhdGNoICgzLzMpOgo+ID4gPiA+ID4gICAtIFJlbW92ZSB1bm5lY2Vz
c2FyeSBuZXdsaW5lcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBMaW5rIHRvIFYzOgo+ID4gPiA+ID4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2NvdmVyLjE3NDg1MDU0NDYuZ2l0Lnpob3ViaW5i
aW5AbG9vbmdzb24uY24vCj4gPiA+ID4gPgo+ID4gPiA+ID4gVjM6Cj4gPiA+ID4gPiBQYXRjaCAo
MS8zKToKPiA+ID4gPiA+ICAtIERyb3AgIk1GRCIgaW4gdGl0bGUgYW5kIGNvbW1lbnQ7Cj4gPiA+
ID4gPiAgLSBGcm9tYXR0aW5nIGNvZGU7Cj4gPiA+ID4gPiAgLSBBZGQgY2xlYXJlciBjb21tZW50
cy4KPiA+ID4gPiA+IFBhdGNoICgyLzMpOgo+ID4gPiA+ID4gIC0gUmViYXNlIGxpbnV4LWlwbWkv
bmV4dCB0cmVlOwo+ID4gPiA+ID4gIC0gVXNlIHJlYWR4KCkvd3JpdGV4KCkgdG8gcmVhZCBhbmQg
d3JpdGUgSVBNSSBkYXRhIGluc3RlYWQgb2Ygc3RydWN0dXJlCj4gPiA+ID4gPiAgICBwb2ludGVy
IHJlZmVyZW5jZXM7Cj4gPiA+ID4gPiAgLSBDT05GSUdfTE9PTkdBUkNIIC0+IE1GRF9MUzJLX0JN
QzsKPiA+ID4gPiA+ICAtIERyb3AgdW51c2VkIG91dHB1dC4KPiA+ID4gPiA+IFBhdGNoICgzLzMp
Ogo+ID4gPiA+ID4gIC0gSW5saW5lIHRoZSBsczJrX2JtY19ncGlvX3Jlc2V0X2hhbmRsZXIoKSBm
dW5jdGlvbiB0byBsczJrX2JtY19wZGF0YV9pbml0aWFsKCk7Cj4gPiA+ID4gPiAgLSBBZGQgY2xl
YXJlciBjb21tZW50cy4KPiA+ID4gPiA+ICAtIFVzZSBwcm9wZXIgbXVsdGktbGluZSBjb21tZW50
YXJ5IGFzIHBlciB0aGUgQ29kaW5nIFN0eWxlIGRvY3VtZW50YXRpb247Cj4gPiA+ID4gPiAgLSBE
ZWZpbmUgYWxsIG1hZ2ljIG51bWJlcnMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gTGluayB0byBWMjoK
PiA+ID4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zlci4xNzQ3Mjc2MDQ3Lmdp
dC56aG91YmluYmluQGxvb25nc29uLmNuLwo+ID4gPiA+ID4KPiA+ID4gPiA+IFYyOgo+ID4gPiA+
ID4gLSBEcm9wIGxzMmtkcm0sIHVzZSBzaW1wbGVkcm0gaW5zdGVhZC4KPiA+ID4gPiA+IFBhdGNo
ICgxLzMpOgo+ID4gPiA+ID4gIC0gVXNlIERFRklORV9SRVNfTUVNX05BTUVEL01GRF9DRUxMX1JF
UyBzaW1wbGlmaWVkIGNvZGU7Cj4gPiA+ID4gPiAgLSBBZGQgcmVzb2x1dGlvbiBmZXRjaGluZyBk
dWUgdG8gcmVwbGFjaW5nIHRoZSBvcmlnaW5hbCBkaXNwbGF5Cj4gPiA+ID4gPiAgICBzb2x1dGlv
biB3aXRoIHNpbXBsZWRybTsKPiA+ID4gPiA+ICAtIEFkZCBhcGVydHVyZV9yZW1vdmVfY29uZmxp
Y3RpbmdfZGV2aWNlcygpIHRvIGF2b2lkIGVmaWZiCj4gPiA+ID4gPiAgICBjb25mbGljdCB3aXRo
IHNpbXBsZWRybS4KPiA+ID4gPiA+IFBhdGNoICgzLzMpOgo+ID4gPiA+ID4gIC0gVGhpcyBwYXJ0
IG9mIHRoZSBmdW5jdGlvbiwgbW92ZWQgZnJvbSB0aGUgb3JpZ2luYWwgbHMya2RybSB0byBtZmQ7
Cj4gPiA+ID4gPiAgLSBVc2Ugc2V0X2NvbnNvbGUgdG8gaW1wbGVtZW50IHRoZSBSZS1wdXNoIGRp
c3BsYXkgZnVuY3Rpb24uCj4gPiA+ID4gPgo+ID4gPiA+ID4gTGluayB0byBWMToKPiA+ID4gPiA+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zlci4xNzM1NTUwMjY5LmdpdC56aG91Ymlu
YmluQGxvb25nc29uLmNuLwo+ID4gPiA+ID4KPiA+ID4gPiA+IEJpbmJpbiBaaG91ICgzKToKPiA+
ID4gPiA+ICAgbWZkOiBsczJrYm1jOiBJbnRyb2R1Y2UgTG9vbmdzb24tMksgQk1DIGNvcmUgZHJp
dmVyCj4gPiA+ID4gPiAgIG1mZDogbHMya2JtYzogQWRkIExvb25nc29uLTJLIEJNQyByZXNldCBm
dW5jdGlvbiBzdXBwb3J0Cj4gPiA+ID4gPiAgIGlwbWk6IEFkZCBMb29uZ3Nvbi0ySyBCTUMgc3Vw
cG9ydAo+ID4gPiA+ID4KPiA+ID4gPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9NYWtlZmlsZSAgICAg
ICB8ICAgMSArCj4gPiA+ID4gPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaS5oICAgICAgfCAg
IDcgKwo+ID4gPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jIHwgICAzICsK
PiA+ID4gPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2xzMmsuYyB8IDE4OSArKysrKysr
KysrKysKPiA+ID4gPiA+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICB8ICAxMiAr
Cj4gPiA+ID4gPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgfCAgIDIgKwo+ID4g
PiA+ID4gIGRyaXZlcnMvbWZkL2xzMmtibWMtbWZkLmMgICAgICAgIHwgNDg1ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPiA+ID4gPiA+ICA3IGZpbGVzIGNoYW5nZWQsIDY5OSBpbnNl
cnRpb25zKCspCj4gPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2hhci9pcG1p
L2lwbWlfc2lfbHMyay5jCj4gPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZk
L2xzMmtibWMtbWZkLmMKPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gYmFzZS1jb21taXQ6
IGNkMmUxMDNkNTdlNTYxNWY5YmIwMjdkNzcyZjkzYjllZmQ1NjcyMjQKPiA+ID4gPiA+IC0tCj4g
PiA+ID4gPiAyLjQ3LjEKPiA+ID4gPiA+Cj4gPiA+Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+IFRoYW5r
cy4KPiA+ID4gQmluYmluCj4gCj4gLS0gCj4gVGhhbmtzLgo+IEJpbmJpbgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9w
ZXIK
