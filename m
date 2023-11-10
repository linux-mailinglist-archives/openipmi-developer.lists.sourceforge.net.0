Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F077E79F2
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Nov 2023 09:05:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r1MVW-0002GJ-6a;
	Fri, 10 Nov 2023 08:04:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1r1MVU-0002GC-Bk
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Nov 2023 08:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ph3r6W3ZOEve9Hkl7Iw3bmLrrox+HAMO2u2m9RVXKn8=; b=V01nWiZks+OKBIrm2I3CY68S1U
 dXFyPsdOVo5TEDgRfbr9NKDnhMiS8pD3sg5yk7rDowG/PyZraniy+rA9KDmpKgKwtj09uYGfaif4N
 lAh8o02yAr/fOW/9wywzYaCHvNFguDC0AUXdnPgMm8EqLtUKcq7GQzkW5+5SqChPcJ9U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ph3r6W3ZOEve9Hkl7Iw3bmLrrox+HAMO2u2m9RVXKn8=; b=CACZB2KI2ahVmcOK7JvJIawvWX
 4cDhFnDf5IY0W5YQWoKDbg4pfhMxJfkHA16WStvWzSVa6HZfhsaK9N8OK3DltfnZjYZgm/Phg/oIm
 xgvaWv+eWO5C75Jq6WGE1iR9eJYuL1fl0PrnxAj+r2Xuk0IAveurFASrRV0F3EnqF8GM=;
Received: from [212.122.41.197] (helo=mail.flyingcircus.io)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r1MVO-0006Gs-Ht for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Nov 2023 08:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1699603467;
 bh=Ph3r6W3ZOEve9Hkl7Iw3bmLrrox+HAMO2u2m9RVXKn8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=S8PMqaMuk3xj3Q55WjzNHfXTTq/Ogbkh+xEWYDSah+NUbHwsIlksoylO7psmTlFk1
 w0+xnw1xgMOivrdi0X/reiomSM+1ALIFS5kcUYQZZCKUr0pVYsRvForG/hPFiFb10V
 lq8TMroBgK6OvITJ1l0K03ZzUVzqVuQW9jRgjhO0=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
In-Reply-To: <17F6EFCD-04EF-43C8-8B4A-3B12D6EDFB86@flyingcircus.io>
Date: Fri, 10 Nov 2023 09:04:04 +0100
Message-Id: <6E32CAFD-692F-4799-82C7-ABC0A97B5CD6@flyingcircus.io>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
 <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
 <ZRujFdwLxQVVfQj7@mail.minyard.net>
 <3B168EB2-55E5-4F40-BAEC-A1861CDBE2D3@flyingcircus.io>
 <ZUzjnK+EVUmHbVOE@mail.minyard.net>
 <18E8EDB0-F910-4688-B33A-62A1804CEFAB@flyingcircus.io>
 <ZU0GghPIh0CajfEj@mail.minyard.net>
 <17F6EFCD-04EF-43C8-8B4A-3B12D6EDFB86@flyingcircus.io>
To: minyard@acm.org
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > On 9. Nov 2023, at 19:00,
 Christian Theune <ct@flyingcircus.io> wrote: > > And so,
 looking around I find: > > CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=y
 > # CONFIG_SOFTLOCKUP_DETECTOR is not set > CONFI [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1r1MVO-0006Gs-Ht
Subject: Re: [Openipmi-developer] SOL via syslog?
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Cgo+IE9uIDkuIE5vdiAyMDIzLCBhdCAxOTowMCwgQ2hyaXN0aWFuIFRoZXVuZSA8Y3RAZmx5aW5n
Y2lyY3VzLmlvPiB3cm90ZToKPiAKPiBBbmQgc28sIGxvb2tpbmcgYXJvdW5kIEkgZmluZDoKPiAK
PiBDT05GSUdfSEFWRV9IQVJETE9DS1VQX0RFVEVDVE9SX1BFUkY9eQo+ICMgQ09ORklHX1NPRlRM
T0NLVVBfREVURUNUT1IgaXMgbm90IHNldAo+IENPTkZJR19IQVJETE9DS1VQX0NIRUNLX1RJTUVT
VEFNUD15Cj4gIyBDT05GSUdfSEFSRExPQ0tVUF9ERVRFQ1RPUiBpcyBub3Qgc2V0Cj4gQ09ORklH
X1RFU1RfTE9DS1VQPW0KPiAKPiBSZWFkaW5nIHRoZSBrZXJuZWwgZG9jcyBhYm91dCB0aGlzIHNl
ZW1zIGxpa2UgdGhpcyBtaWdodCBiZSBhbiBvdmVyc2lnaHQgZnJvbSBvdXIgc2lkZSBhbmQgd2Ug
bWlnaHQgYmUgZXhwZXJpZW5jaW5nIGxvY2t1cHMgdGhhdCBkbyBub3QgcmVzdWx0IGluIHBhbmlj
cyAod2hpY2ggaW4gdHVybiB0aHVzIHdvbuKAmXQgc2hvdyB1cCBpbiB0aGUgU0VMKS4KPiAKPiBJ
IGd1ZXNzIHdl4oCZdmUgZm91bmQgc29tZSBtb3JlIGhvbWV3b3JrIHdlIGNhbiBkbyBvbiBvdXIg
c2lkZSB0byBnZXQgYmV0dGVyIHZpc2liaWxpdHkuCj4gCj4gQUZBSUNUIEkgY2FuIGVhc2lseSB0
cmlnZ2VyIGFuIE5NSSBmcm9tIGlwbWkgYW5kIHRoZW4gdmVyaWZ5IHRoYXQgdGhpcyBjYXVzZXMg
cHJvcGVyIFNFTCBlbnRyaWVzIOKApiAKPiAKPiAoSW4gYW55IGNhc2UsIHRoZSBOTUkgbG9ja3Vw
IGlzbuKAmXQgMTAwJSBjb252aW5jaW5nIGFzIGl0IGNvbXBsZXRlbHkgc3RvcHBlZCBoYXBwZW5p
bmcgc2luY2Ugd2UgYXR0YWNoZWQgdGhlIFNPTHMg4oCmKQoKU28uIEnigJl2ZSBiZWVuIGdvaW5n
IHRocm91Z2ggb3VyIGtlcm5lbCBjb25maWcgZW5hYmxpbmcgdGhvc2Ugb3B0aW9ucyBhbmQgZ29p
bmcgdGhyb3VnaCB0aGUgTk1JIHRoaW5ncyB5b3UgbWVudGlvbmVkIHdpdGggdGhlIEJNQyBubWkg
aGFuZGxpbmcgYW5kIGZvdW5kIHNvbWV0aGluZyBhd2t3YXJkOiBpdCBhcHBlYXJzIHRoYXQgb3Vy
IGZsZWV0IGlzIGVuYWJsaW5nIGRpZmZlcmVudCB3YXRjaGRvZ3M6CgpOZXdlciBtYWNoaW5lcyBz
ZWVtIHRvIGVuYWJsZSB0aGUgc3A1MTAwX3RjbwoKd2F0Y2hkb2cgICAgICAgICAgICAgICAyNDU3
NiAgMSBzcDUxMDBfdGNvCmlwbWlfd2F0Y2hkb2cgICAgICAgICAgMzI3NjggIDEKCldoZXJlYXMg
b2xkZXIgbWFjaGluZXMgc2VlbSB0byBlbmFibGUgdGhlIGlUQ09fd2R0Cgp3YXRjaGRvZyAgICAg
ICAgICAgICAgIDI0NTc2ICAyIGlUQ09fd2R0CmlwbWlfd2F0Y2hkb2cgICAgICAgICAgMzI3Njgg
IDAKCndhdGNoZG9nICAgICAgICAgICAgICAgMjQ1NzYgIDEgaVRDT193ZHQKaXBtaV93YXRjaGRv
ZyAgICAgICAgICAzMjc2OCAgMQoKSW50ZXJlc3RpbmdseSB0aGUgQk1DIHN0aWxsIGFjY291bnRz
IGZvciB0aGlzLCBzbyB0aGVyZSBzZWVtcyB0byBiZSBzb21lIGludGVncmF0aW9uIGdvaW5nIG9u
ICh0aGlzIGlzIGZyb20gdGhlIHNwNTEwMF90Y28pCgpXYXRjaGRvZyBUaW1lciBVc2U6ICAgICBT
TVMvT1MgKDB4NDQpCldhdGNoZG9nIFRpbWVyIElzOiAgICAgIFN0YXJ0ZWQvUnVubmluZwpXYXRj
aGRvZyBUaW1lciBBY3Rpb25zOiBIYXJkIFJlc2V0ICgweDAxKQpQcmUtdGltZW91dCBpbnRlcnZh
bDogICAwIHNlY29uZHMKVGltZXIgRXhwaXJhdGlvbiBGbGFnczogMHgxMApJbml0aWFsIENvdW50
ZG93bjogICAgICA2MCBzZWMKUHJlc2VudCBDb3VudGRvd246ICAgICAgNDcgc2VjCgpTbyBJIGd1
ZXNzIHdlIHNsaXBwZWQgaGVyZS4gTXkgaW50ZW50aW9uIHdhcyB0aGF0IHdlIGFsd2F5cyB1c2Ug
dGhlIElQTUkgd2F0Y2hkb2cgYW5kIGl0IGFwcGVhcnMgdGhhdCBoYXMgZGV2aWF0ZWQgYnV0IHdh
c27igJl0IG5vdGljZWQuIE1heWJlIHRoaXMgYWxzbyBleHBsYWlucyB0aGUgc2lsZW5jZSDigKYg
PwoKSeKAmWxsIGdldCB0aGlzIHN0cmFpZ2h0ZW5lZCBvdXQgYW5kIGNvbWJpbmUgdGhhdCB3aXRo
IHRoZSBTT0ZUTE9DS1VQIGFuZCBIQVJETE9DS1VQIHBhbmljIHNldHRpbmdzLCBtYXliZSB0aGlz
IHdpbGwgaW1wcm92ZSB2aXNpYmlsaXR5IGludG8gd2h5IHRoaW5ncyBhcmUgY3Jhc2hpbmcg4oCm
IC1fLQoKQ2hyaXN0aWFuCgotLSAKQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMu
aW8gwrcgKzQ5IDM0NSAyMTk0MDEgMApGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMg
R21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5pbwpMZWlwemlnZXIgU3RyLiA3MC83MSDCtyAw
NjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCkhSIFN0ZW5kYWwgSFJCIDIxMTY5IMK3
IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBDaHJpc3RpYW4gWmFncm9kbmlj
awoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVu
aXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
b3BlbmlwbWktZGV2ZWxvcGVyCg==
