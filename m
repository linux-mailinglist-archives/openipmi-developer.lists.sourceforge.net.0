Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD34B49334
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Sep 2025 17:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hoGX76eouQWJ0+lYyZhm5xxwV9HcwjfqzmXl9hQkzIo=; b=cjqBELyz/RkA6VPYFMXfpPvswk
	dhkGyWx2TCzrCTvTMAquom/PUzTPVP9Rg+9fMg21fTYtjCWKwtl7IzmZrYO7Nfq28xTH0BLi0AllL
	s38SMveLYKHtx09gnHJGubVNm824RR61CV4KgXB75mluKGuiqzR9DCX9z1IL/98R1Ml8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uvdmF-0007gM-Jy;
	Mon, 08 Sep 2025 15:27:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uvdmE-0007gG-5d
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Sep 2025 15:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4jQqNVYIuMbhaHikEyc6LfEfgr3MBf/W2+nUiSWCx68=; b=KDVd1GQwWwSWGf4iGGVJ3+gzHS
 Qf2mmII0w+/KGViJOUXSnh/eaNexBZrXZzi6D+VByLK8s3ielhNqsAUR+2YcdvU4+qqrYFRbqnRcb
 Vt53Kg/hWiCMAeFnGVbC2kldeoQVhKoqpThezs7IM/U1bAhd7YAQKFWeu01YmqHC7JtM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4jQqNVYIuMbhaHikEyc6LfEfgr3MBf/W2+nUiSWCx68=; b=SNU3hDiv0UykIa9KFzYEH3VC2j
 DdF2QPqsKST32aVyLB/rLjT5Qw6Gi8HfTf/ZzP7JsW3RB6P/G3wjzZzUagsye65K383HLcU3e8B6q
 WW5hB8z9Ey3mshP5/X9d5iCUkRPcMy59ADLox0z5GXuFsnmE8CQV9GukXwGanaLoizl0=;
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uvdmD-0006iC-HA for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Sep 2025 15:27:30 +0000
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-62182ff2a9bso497113eaf.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Sep 2025 08:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1757345244; x=1757950044;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4jQqNVYIuMbhaHikEyc6LfEfgr3MBf/W2+nUiSWCx68=;
 b=JReH5dz/UWX4X1lHGDH8f/R0Vi/LDI3SbV+Sk67S4C85HphBXsMdy+p/jF6LbFifE5
 +rEWHobsq3w7eUL9ZfcATOWtH5eHngTfexQwQQLXCzFPZSLJo///gOodwvAQ4f5WMOJl
 oUAMFxmxe7TzkoRJwBDmK6Ztigjva4Sj2Mlka3vQuBLVtfNbYfv3pKgiajS3cTJyNKub
 Z8w/PeFqolvV19+l2J6YYEbidUJRoJy0hREHx7LIdUx3mm+FRum8KpBSQkSwxazLM+72
 wN6hCHglPG8eGknmzDIYd4/xfcdJ9BjWLF2pSbYvjHOMWcfcqRAbAarFUBC2511kDzOR
 R8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757345244; x=1757950044;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4jQqNVYIuMbhaHikEyc6LfEfgr3MBf/W2+nUiSWCx68=;
 b=FnOm+ktYUcR8fvsyxMIfr/wkjBzny8NqYiL6SJf4TraO0dwRfmb8GHAUF6O+fIVQRA
 JmYJDs6cEQFPIiJ/HVU8CXuy/imr2HNCMg0O8O0xR8l5M6NrQWBMUIXZAPYzxv6SPi+o
 PsRbyB2e+r+ZIZZ8b3eGT4si7iUjw43LSl1qE3LdDeTZC1EPco68et2IL4mesPYvoVju
 G6NE+jUbGXY1Q8jZV8ikk4dddr62sXKHk+uAmfDocvPn0lQ+/TruVCL5jznhZE8ffaOF
 gB/mivkZIE0UxWmhF1+LBEnsIr6LAPMyRA6vppIIZxWSYe+avGEUPcs7G2yCBYY/LVxJ
 oLDg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdHcDQvD9hYEur35snODKCfgDq+brg+GbMUDWTZq3DqnNuMdLzpQeXMFEQNdO9buUTpd+Hibkvu9zOv/r/jBZj+e4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwisdXgEiINGEAOHsnRK6l8KdHG6KiHMFKtc9nNGVAv4onEYBdM
 T/OeJmWM1waROKICKIk/wzwGSsHk/6hCCzcbXRelicUHaQgNrMTWzOTF172yl2s1XmJy0XlDeAm
 Nnaiv3mA=
X-Gm-Gg: ASbGnctS6YPXyfeKOZZl6l/Q8Q0ykHT1WWq+ZRYffJ4IUd7w34gUqvuqEgWhtXsYWgF
 8dkdAFwWJ3lhtgeePQ6maFOPlveHchM2+z0Cu6VpPkPW1eCHUuWors3vpUU3hLsJrZcP3uoaKUT
 OIbviFFi23dHuJSdJ1Ty/yugT4I8/BawjGzDN2CJkaLTrLeunzvvTtpjhY6SOK3VxbME6C56uOC
 qlqgumVY9aEWh9yCAwrUj+7cO2IKyTzNf+1SFRv1JCa0M+5qJLFluGmuhZCj3fPSviGCgVnJkxJ
 S6/rO7L26wRXqiJyXXdahATuWNdNb69BNy3IoAUIxt95mmVZ27WMSQn+TTnKxPl9YWDfg5wNZaZ
 WSF989cEZxRKaS4ayvsN0k9tR5Q==
X-Google-Smtp-Source: AGHT+IE2MMTUnKpOyARn855O4YY8YtMTYEMzR8gQvezmFV/9+j61YPoiDT1MhIgNdx9G81aUDa0RzQ==
X-Received: by 2002:a05:6808:6f8f:b0:438:133e:635c with SMTP id
 5614622812f47-43b299dd05fmr4341409b6e.10.1757345243578; 
 Mon, 08 Sep 2025 08:27:23 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:6c2d:e6cb:9ddd:bb13])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-43836abed32sm3610146b6e.29.2025.09.08.08.27.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Sep 2025 08:27:22 -0700 (PDT)
Date: Mon, 8 Sep 2025 10:27:19 -0500
From: Corey Minyard <corey@minyard.net>
To: Gilles BULOZ <gilles.buloz@kontron.com>
Message-ID: <aL711299g2yKstat@mail.minyard.net>
References: <5cc48305-d88d-ac15-ce0d-55306a60a0dd@kontron.com>
 <aLrPbzfho1d2kMsn@mail.minyard.net>
 <aLrRlQZdeToIgPBG@mail.minyard.net>
 <c3c0cba1-a45d-8619-06c0-64046d8ecd76@kontron.com>
 <f14bd1ca-c47a-13b3-fd5f-5f5ad0c89fad@kontron.com>
 <aLsw6G0GyqfpKs2S@mail.minyard.net>
 <5c0d8998-6cb2-5ce5-e3a5-67237a51049f@kontron.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c0d8998-6cb2-5ce5-e3a5-67237a51049f@kontron.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Sep 08, 2025 at 04:54:50PM +0200, Gilles BULOZ wrote:
    > Le 05/09/2025 à 20:50, Corey Minyard a écrit : > > I'm adding the OpenIPMI
    mailing list and the LKML. > > > > On Fri, Sep 05, 2025 at [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.161.42 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uvdmD-0006iC-HA
Subject: Re: [Openipmi-developer] user->nr_msgs going negative in
 ipmi_msghandler.c
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
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBTZXAgMDgsIDIwMjUgYXQgMDQ6NTQ6NTBQTSArMDIwMCwgR2lsbGVzIEJVTE9aIHdy
b3RlOgo+IExlIDA1LzA5LzIwMjUgw6AgMjA6NTAsIENvcmV5IE1pbnlhcmQgYSDDqWNyaXTCoDoK
PiA+IEknbSBhZGRpbmcgdGhlIE9wZW5JUE1JIG1haWxpbmcgbGlzdCBhbmQgdGhlIExLTUwuCj4g
Pgo+ID4gT24gRnJpLCBTZXAgMDUsIDIwMjUgYXQgMDU6MDQ6MjhQTSArMDIwMCwgR2lsbGVzIEJV
TE9aIHdyb3RlOgo+ID4+IExlIDA1LzA5LzIwMjUgw6AgMTU6MTUsIEdpbGxlcyBCVUxPWiBhIMOp
Y3JpdMKgOgo+ID4+PiBMZSAwNS8wOS8yMDI1IMOgIDE0OjAzLCBDb3JleSBNaW55YXJkIGEgw6lj
cml0wqA6Cj4gPj4+PiBPbiBGcmksIFNlcCAwNSwgMjAyNSBhdCAwNjo1NDoyM0FNIC0wNTAwLCBD
b3JleSBNaW55YXJkIHdyb3RlOgo+ID4+Pj4+IE9uIEZyaSwgU2VwIDA1LCAyMDI1IGF0IDEwOjE2
OjE5QU0gKzAyMDAsIEdpbGxlcyBCVUxPWiB3cm90ZToKPiA+Pj4+Pj4gSGkgQ29yZXksCj4gPj4+
Pj4+Cj4gPj4+Pj4+IEknbSBIVy9TVyBkZXZlbG9wZXIgYXQgS29udHJvbiAoY29tcHV0ZXIgbWFu
dWZhY3R1cmVyKSBhbmQgZG9uJ3Qga25vdyB3aGF0IHRvCj4gPj4+Pj4+IHRoaW5rIGFib3V0IGFu
IGlzc3VlIHdpdGggdXNlci0+bnJfbXNncyBnb2luZyBuZWdhdGl2ZSBpbiBpcG1pX21zZ2hhbmRs
ZXIuYy4KPiA+Pj4+Pj4gTm90IHN1cmUgaWYgaXQncyBhIHdlYWtuZXNzIGluIGlwbWlfbXNnaGFu
ZGxlci5jIG9yIGEgYnVnIGluIHRoZSBJUE1DIHNvZnR3YXJlCj4gPj4+Pj4+IG9mIG91ciBjb21w
dXRlciBib2FyZCAoc2F0ZWxsaXRlKSB3aXRoIGV2ZW50IG1lc3NhZ2VzLgo+ID4+Pj4+IEkgd29y
a2VkIHdpdGggcGVvcGxlIGZyb20gS29udHJvbiBhIGxvbmcgdGltZSBhZ28uICBUaG9zZSB3ZXJl
IGdvb2QKPiA+Pj4+PiB0aW1lcyA6KS4KPiA+Pj4+Pgo+ID4+Pj4+PiBJIHNlZSB0aGlzIHdoZW4g
SSBydW4gaXBtaXRvb2wgb24gdGhpcyBib2FyZCB3aGlsZSBzb21lIGV2ZW50IG1lc3NhZ2VzIGFs
cmVhZHkKPiA+Pj4+Pj4gYXZhaWxhYmxlLiBJbiB0aGlzIGNhc2UgZGVsaXZlcl9yZXNwb25zZSgp
IGlzIHByb2Nlc3NpbmcgdGhlIG1lc3NhZ2VzIGFuZCBpcwo+ID4+Pj4+PiBkZWNyZWFzaW5nIHVz
ZXItPm5yX21zZ3MgYmVsb3cgMC4gVGhlbiB3aGVuIGlwbWl0b29sIGNhbGxzCj4gPj4+Pj4+IGlv
Y3RsKElQTUlDVExfU0VORF9DT01NQU5EKSBpdCBnZXRzIGFuIGVycm9yIHdpdGggZXJybm89RUJV
U1kgYmVjYXVzZSBpbgo+ID4+Pj4+PiBpX2lwbWlfcmVxdWVzdCgpIHVzZXItPm5yX21zZ3MgaXMg
aW5jcmVtZW50ZWQgYnV0IHN0aWxsIG5lZ2F0aXZlLCBjYXN0ZWQgdG8KPiA+Pj4+Pj4gdW5zaWdu
ZWQgaW50IHNvIGJlY29tZXMgaHVnZSwgYW5kIGZvdW5kIGdyZWF0ZXIgdGhhbiBtYXhfbXNnc19w
ZXJfdXNlciAoMTAwKS4KPiA+Pj4+PiBUaGFua3MgZm9yIHRoZSBkZXRhaWxlZCBkZXNjcmlwdGlv
bi4gIFRoZSBmaXggZm9yIHRoZSBidWcgaXM6Cj4gPj4+Pj4KPiA+Pj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9p
cG1pX21zZ2hhbmRsZXIuYwo+ID4+Pj4+IGluZGV4IGUxMmI1MzFmNWMyZi4uYmEzMzA3MDYyMmIx
IDEwMDY0NAo+ID4+Pj4+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5j
Cj4gPj4+Pj4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPiA+Pj4+
PiBAQCAtMTYzNCw2ICsxNjM0LDcgQEAgaW50IGlwbWlfc2V0X2dldHNfZXZlbnRzKHN0cnVjdCBp
cG1pX3VzZXIgKnVzZXIsIGJvb2wgdmFsKQo+ID4+Pj4+Cj4gPj4+Pj4gICAgICAgICAgICAgICAg
IGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShtc2csIG1zZzIsICZtc2dzLCBsaW5rKSB7Cj4gPj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgbXNnLT51c2VyID0gdXNlcjsKPiA+Pj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICBhdG9taWNfYWRkKDEsICZ1c3ItPm5yX21zZ3MpOwo+ID4+Pj4g
U29ycnksIHRoYXQgc2hvdWxkIG9idmlvdXNseSBiZSB1c2VyLT5ucl9tc2dzCj4gPj4+IFRoYW5r
cyB2ZXJ5IG11Y2ggIQo+ID4+PiBJJ3ZlIHRyaWVkIGl0IHdpdGgga2VybmVsIDYuMTEuOCBhbmQg
aXQncyBiZXR0ZXIgYnV0IHN0aWxsIG5vdCBlbm91Z2guCj4gPj4+IFJ1bm5pbmcgImlwbWl0b29s
IHNlbnNvciIgd2l0aCBzb21lIGRlYnVnIGluIGlwbWlfbXNnaGFuZGxlci5jIHNob3dzIHRoYXQg
SSBhbHdheXMgaGF2ZSBucl9tc2dzPTEgcmlnaHQgYWZ0ZXIgdGhlIGF0b21pY19hZGQgKGNhbGxl
ZAo+ID4+PiA5IHRpbWVzKSwgdGhlbiB3aGVuIGluIGlfaXBtaV9yZXF1ZXN0KCkgSSByZWFjaCBs
aW5lICJydiA9IC1FQlVTWTsiIHdpdGggbnJfbXNncz0tMiAodHdpY2UpLgo+ID4+IE15IHVuZGVy
c3RhbmRpbmcgaXMgdGhhdCBpcG1pdG9vbCBjYWxscyBpb2N0bChJUE1JQ1RMX1NFVF9HRVRTX0VW
RU5UU19DTUQpIGNhbGxpbmcgaXBtaV9zZXRfZ2V0c19ldmVudHMoKSBhbmQgdGhhbmtzIHRvIHlv
dXIgcGF0Y2gKPiA+PiBmb3IgZWFjaCBldmVudCBhdmFpbGFibGUgdGhlIG5yX21zZ3MgaXMgaW5j
cmVtZW50ZWQgaGVyZSBhbmQgZGVjcmVtZW50ZWQgaW4gZGVsaXZlcl9yZXNwb25zZSgpLiBTbyB5
b3VyIHBhdGNoIGlzIE9LIGZvciB0aGF0Lgo+ID4+IEJ1dCBhZnRlciB0aGF0IGlmIG90aGVyIGV2
ZW50cyBhcmUgY29taW5nLCBkZWxpdmVyX3Jlc3BvbnNlKCkgaXMgY2FsbGVkIGFuZCBucl9tc2dz
IGdldHMgZGVjcmVtZW50ZWQuIFNvIHdoZW4gaXBtaXRvb2wgY2FsbHMKPiA+PiBpb2N0bChJUE1J
Q1RMX1NFTkRfQ09NTUFORCksIHRoaXMgY2FsbHMgaV9pcG1pX3JlcXVlc3QoKSB3aXRoIG5yX21z
Z3MgPCAwIGFuZCB0aGF0IHJldHVybnMgLUVCVVNZCj4gPgo+ID4gWWVhaCwgYWZ0ZXIgSSBzZW50
IG15IGVtYWlsIEkgc3RhcnRlZCBsb29raW5nIHRocm91Z2ggdGhlIGRyaXZlciBmb3IKPiA+IG90
aGVyIGlzc3VlcyBhcm91bmQgdGhpcywgYW5kIHRoZXJlIHdlcmUgc2V2ZXJhbC4gIFRoYXQgY2hh
bmdlIHdhc24ndAo+ID4gd2VsbCB0aG91Z2h0IHRocm91Z2guCj4gPgo+ID4gU28sIEkndmUgYWRk
ZWQgc29tZSB0ZXN0cyBhcm91bmQgdGhpcyBpbiBteSB0ZXN0IHN1aXRlLCBhbmQgSSd2ZQo+ID4g
cmV3b3JrZWQgdGhpcyB0byBiZSBhIG11Y2ggYmV0dGVyIGltcGxlbWVudGF0aW9uIHRoYXQncyBo
YXJkZXIgdG8gZ2V0Cj4gPiB3cm9uZy4KPiA+Cj4gPiBJJ20gZ29pbmcgdG8gc2VuZCB0aGUgZml4
IGluIGEgc2VwYXJhdGUgZW1haWwuCj4gPgo+ID4gVGhhbmtzLAo+ID4KPiA+IC1jb3JleQo+ID4K
PiBUaGFua3MgQ29yZXkKPiBJIGNvbmZpcm0geW91ciBmaXggKHNlcGFyYXRlIGVtYWlsKSBpcyB3
b3JraW5nIGZvciBtZS4gQXBwbGllZCBvbiBrZXJuZWwgNi4xNy1yYzUgc291cmNlcywgd2l0aCBm
ZXcgY2hhbmdlcyB1bmRlciBkcml2ZXJzL2NoYXIvaXBtaS8KPiB0byBidWlsZCB0aGUga2VybmVs
IG1vZHVsZXMgdGhlcmUgZm9yIGtlcm5lbCA2LjExLjgsIGFuZCB0aGVuIHVzaW5nIHRoZXNlIG1v
ZHVsZXMuCgpUaGFua3MgYSBidW5jaCBmb3IgdGVzdGluZyBhbmQgcmVwb3J0aW5nLiAgQXQgdGhp
cyBwb2ludCBpdCdzIGRlc3RpbmVkCmZvciA2LjE4LCBtYXJrZWQgZm9yIGJhY2twb3J0IHRvIDQu
MTkuICBJdCdzIGEgbGl0dGxlIGxhdGUgdG8gcHVzaCB0aGlzCnRvIExpbnVzIG5vdy4KCgo+IEFu
b3RoZXIgc2ltcGxlIGZpeCB0aGF0IHdvcmtlZCBmb3IgbWUgb24gNi4xMS44IHdhcyB0byByZXBs
YWNlIGF0b21pY19kZWMoKSB3aXRoIGF0b21pY19kZWNfaWZfcG9zaXRpdmUoKSBpbiBkZWxpdmVy
X3Jlc3BvbnNlKSwgaW4KPiBhZGRpdGlvbiB0byB5b3VyIHN1Z2dlc3RlZCBjaGFuZ2UgdG8gYWRk
IGFuIGF0b21pY19hZGQoKSB0byBpcG1pX3NldF9nZXRzX2V2ZW50cygpLgoKWWVhaCwgYnV0IHRo
YXQncyBqdXN0IGNvdmVyaW5nIG92ZXIgdGhlIHByb2JsZW0uICBJdCdzIG9rIGZvciBhIHF1aWNr
CmhhY2ssIGJ1dCBpdCdzIG5vdCByZWFsbHkgZml4aW5nIHRoZSBpc3N1ZS4gIFRoZSByZWZjb3Vu
dHMgbmVlZCB0byBiZQpyaWdodC4KClRoYW5rcyBhZ2Fpbi4KCi1jb3JleQoKCj4gPj4+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAga3JlZl9nZXQoJnVzZXItPnJlZmNvdW50KTsKPiA+Pj4+PiAg
ICAgICAgICAgICAgICAgICAgICAgICBkZWxpdmVyX2xvY2FsX3Jlc3BvbnNlKGludGYsIG1zZyk7
Cj4gPj4+Pj4gICAgICAgICAgICAgICAgIH0KPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gQ2FuIHlv
dSB0cnkgdGhhdCBvdXQ/Cj4gPj4+Pj4KPiA+Pj4+PiBJJ2xsIGZvcndhcmQgcG9ydCB0aGlzIHRv
IGN1cnJlbnQga2VybmVsIChpZiBhcHByb3ByaWF0ZSwgdGhpcyBoYXMgYWxsCj4gPj4+Pj4gYmVl
biByZXdyaXR0ZW4pIGFuZCByZXF1aXJlZCBhIGJhY2twb3J0Lgo+ID4+Pj4+Cj4gPj4+Pj4gVGhh
bmtzLAo+ID4+Pj4+Cj4gPj4+Pj4gLWNvcmV5Cj4gPj4+Pj4KPiA+Pj4+Pj4gQXMgd29ya2Fyb3Vu
ZCBJIHNldCBtb2R1bGUgcGFyYW1ldGVyIG1heF9tc2dzX3Blcl91c2VyIHRvIDB4ZmZmZmZmZmYg
c28gdGhhdAo+ID4+Pj4+PiB1c2VyLT5ucl9tc2dzIGlzIG5ldmVyIGdyZWF0ZXIgdGhhbiB0aGlz
IHZhbHVlLgo+ID4+Pj4+PiBJIHdhcyB1c2luZyBrZXJuZWwgNi4xMS44IGJ1dCB1cGRhdGVkIHRv
IDYuMTYuMyBhbmQgZ2V0IHRoZSBzYW1lIGlzc3VlLgo+ID4+Pj4+PiBJJ20gYWxzbyBub3Qgc3Vy
ZSBpZiBvdXIgYm9hcmQgaXMgc3VwcG9zZWQgdG8gcmVjZWl2ZSBzdWNoIGV2ZW50IG1lc3NhZ2Vz
IGFzCj4gPj4+Pj4+IGl0IGlzIG5vdCBTaGVsZiBNYW5hZ2VyLCBldmVuIGlmIHRoZXNlIGV2ZW50
cyBjb21lIGZyb20gdGhlIGxvY2FsIHNlbnNvcnMgb2YKPiA+Pj4+Pj4gdGhlIGJvYXJkLgo+ID4+
Pj4+Pgo+ID4+Pj4+PiBCZXN0IHJlZ2FyZHMKPiA+Pj4+Pj4KPiA+Pj4+Pj4gR2lsbGVzIEJ1bG96
Cj4gPj4+Pj4+IEtvbnRyb24gTW9kdWxhciBDb21wdXRlcnMgRnJhbmNlCj4gPj4+Pj4+IFImRCBT
Vy9IVyBzZW5pb3IgZGV2ZWxvcGVyCj4gPj4+Pj4+Cj4gPj4+PiAuCj4gPiAuCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRl
dmVsb3Blcgo=
