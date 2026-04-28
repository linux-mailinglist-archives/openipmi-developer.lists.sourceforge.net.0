Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAaDJu238GkyXwEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 15:36:45 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6109B485FA8
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 15:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AdrVPiJOWb2IlR7Xh/KlkwLUG8A7UNmoKAOPEkejKwQ=; b=XkCjjP6TspAU7fFslbsktcRigp
	T1dtNEVQyJe552jTjZHuU4ZM+GRd2glk1TudljbsT5id81amtERRtcz+r/yOJzkp7szF9KBzqPIA6
	ScDJYxJacrt3I2wvuUr7L74d26wVR659oOxZr5jcTWPQp3LgCshCJ04QbNk1ZIn/Gfoo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wHic6-00014N-7v;
	Tue, 28 Apr 2026 13:36:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wHic5-00014B-5g
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 13:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+tsU5INn4bJgwh3/96W1961MQFOx5hK1YCsF02Kefwg=; b=cupifBIsh7Qx5I+l9PD88PMJ4Q
 p+rRyauXxCTU54DxKkzoiC9WSDlQZcqh/Q7nkpVTW2+xB7ADzpacrngIvkAz2p1GEk18CrTPLfJv2
 MXaXEClog5Sg8fLHveynJaYxO21DlHSfAuUqvUrAuEb5M3LOFYFtW80Nrp6qwjZ/KZ98=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+tsU5INn4bJgwh3/96W1961MQFOx5hK1YCsF02Kefwg=; b=hgaYz4x5I3qQjQR8G/+9jAkxQQ
 qzTYiPVO3ks1EcUt2BmN7rIavIIrncQCiPMrthpLuomQqa0lyuo+RrinHwZEUj0XkBJOkdEkK/1wr
 D4OlSATYAGZB2aDx97Paqp0cdMxZAWtexTY6yhefQjGVPKRWcpcjTBXT7G4c8BWMZCk0=;
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wHic5-0006gy-62 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 13:36:33 +0000
Received: by mail-qk1-f180.google.com with SMTP id
 af79cd13be357-8c70b5594f4so1244178385a.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Apr 2026 06:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1777383387; x=1777988187; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+tsU5INn4bJgwh3/96W1961MQFOx5hK1YCsF02Kefwg=;
 b=N6nERYbB7a0Y8wp+PgYOrrjuOfjnftTVaX7lsRFR/KosGDHqIakW07RnQqzz1bEo6g
 0j6rojjb58q0BLHIOjgA1EIOWLT6HYQ3TEfX6acH8C+u5PTu2JYeedsKsJvXxmExlcAe
 O5Rd2ovu3MtD0lzZD0ailRVI55CRUPAg7BD2VqeWry7WOYguE66jYVpDxKZ8vg8J7FOr
 CYbCmYVGMAZt+3AsU06SQDoFhI4vbbtoIoBa+oZe/TToClTyHYT4Rl+FL3iuznHitMV7
 hPy5nh/FVlgZR2TdEP8zZpoyvqX2PbWQWEAy/5oZ6yj6kE5o4wARM6DaXi0XQISHBF/g
 zmWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777383387; x=1777988187;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+tsU5INn4bJgwh3/96W1961MQFOx5hK1YCsF02Kefwg=;
 b=BVjufejAVnzSVi4hAZ+sqPxypecyTZqXLY7cv+0Zin2hYIFbvvQX1cUaht2E5I3E5B
 AzqalolhgXeUrp6cgS1SegRbW7JocVizpPyCLaqja4MaBtrpD44wOn4T8dDwvJOQ06fk
 pggsyQLUL7kV5h98MBV9qKJPnmXHIoAgTlpg+3TJYgn2akFZoS0Dkcg2UbwuuGbXCseK
 SzzYuKptjG8KAnpvPDNIjjFftB2yHZMKteo8Uf6Dki7iJr8NdDS+rTvrvGKGKt5mivo7
 mvhbhC3DJoXFoL+5KjcBU32BAqLs7OHIu0O9HlZbAQ/UxZ4A7uUk2msAgzVbNtIc5S3d
 N8Tg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/FzmyXmGBRhH4sMTBvYFT4wEMLUrD9VbeMTVn7XEVFMl1u+50Dzpx9b1mRdzC3LDNE/KfJ6qXKdoNdg9XFtd49754=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyDocoCQ09DnaNUX1x0mKh0Dt2JPal0ZydUA1j3/gYWDQy3DiBl
 no0/Phmg6+AYukA89RAAQp3ZdAacu0Tfn9oUVMILBbVEKjolGVL5NCfX8c4kJD/vDM07iT4A7SM
 IOrH5
X-Gm-Gg: AeBDietZFdI4aoozpI8gADzoHp2G9FnbUM70vZ+jKa8uPZhGCUdpITbXHcmgISEhMYE
 GUI+rxRvUfDXkqqSOD7xBWWG2u5wGjOxtSfPSKr2RZH1NVNyDknfJVqUypGWF867GKJXdtmtDQa
 AU836UyFYSb9kynl/0x2jI8ievV1oGdTTRyfQvcci610Yh/WfzZlTGZ7srGxOj/IZwvyhcMZ+Lc
 yGSAQRQQgrvWtIklCcWgWTOCy4FNimAqYUn1BDGrN6zSCH11ReW7x9GVOzHEieRni4ItyjI57+c
 u4+IdPha+2lVGBQySGRZqXyq68Qj7Krozo2rxmr+7RZj4zYHjs2FQJK8fgx6S6csU/CFCor7Evd
 i8Tbh/nxHwncC8LNYMURj5i5HgFlsmbDOFK4hOETr43hh+tkEBeESz3xpgWEiIcYadvWyAiaI6x
 6Bi3B3unu0kM8jRA3VrbwZdiOmM6gspMsQCgYpXCBeIWjZOTM8+oChEYq6dizVGaQ1zZLmmYuFy
 0nSPatnlOSuzeIJOLVzJvXcAA==
X-Received: by 2002:a05:690e:140f:b0:651:c221:9649 with SMTP id
 956f58d0204a3-65bee79ad34mr2152879d50.19.1777381604398; 
 Tue, 28 Apr 2026 06:06:44 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:7bc4:3841:9e4c:e2ac])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-65bee29f1b4sm1645074d50.5.2026.04.28.06.06.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 06:06:43 -0700 (PDT)
Date: Tue, 28 Apr 2026 08:06:39 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>,
 Matt Fleming <mfleming@cloudflare.com>,
 openipmi-developer@lists.sourceforge.net,
 Tony Camuso <tcamuso@redhat.com>, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com, stable@vger.kernel.org
Message-ID: <afCw3_yXBBbRVrgA@mail.minyard.net>
References: <20260421132544.2666174-1-corey@minyard.net>
 <20260421132544.2666174-3-corey@minyard.net>
 <aeyJ0fClAWI2lBwL@matt-Precision-5490>
 <ae1VOEhdR0H0rf0a@mail.minyard.net>
 <afCHrNN-PuXh1WzG@matt-Precision-5490>
 <afCdy0Nu8glFCzqk@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <afCdy0Nu8glFCzqk@mail.minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 28, 2026 at 06:45:15AM -0500,
 Corey Minyard wrote:
 > On Tue, Apr 28, 2026 at 11:15:46AM +0100, Matt Fleming wrote: > > On Sat,
 Apr 25, 2026 at 06:58:48PM -0500, Corey Minyard wrote: > > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.180 listed in wl.mailspike.net]
X-Headers-End: 1wHic5-0006gy-62
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
Reply-To: corey@minyard.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 6109B485FA8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:mfleming@cloudflare.com,m:openipmi-developer@lists.sourceforge.net,m:tcamuso@redhat.com,m:linux-kernel@vger.kernel.org,m:kernel-team@cloudflare.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto]

T24gVHVlLCBBcHIgMjgsIDIwMjYgYXQgMDY6NDU6MTVBTSAtMDUwMCwgQ29yZXkgTWlueWFyZCB3
cm90ZToKPiBPbiBUdWUsIEFwciAyOCwgMjAyNiBhdCAxMToxNTo0NkFNICswMTAwLCBNYXR0IEZs
ZW1pbmcgd3JvdGU6Cj4gPiBPbiBTYXQsIEFwciAyNSwgMjAyNiBhdCAwNjo1ODo0OFBNIC0wNTAw
LCBDb3JleSBNaW55YXJkIHdyb3RlOgo+ID4gPiAKPiA+ID4gT2gsIHllYWguCj4gPiA+IAo+ID4g
PiBNb3ZpbmcgaXQgdG8gaGFuZGxlX3RyYW5zYWN0aW9uX2RvbmUoKSBpcyBub3QgaWRlYWwsIHRo
b3VnaC4gIElmCj4gPiA+IHNvbWV0aGluZyB3YXMgc3Bld2luZyByZWNlaXZlIG1lc3NhZ2VzLCBp
dCB3b3VsZCBuZXZlciBnZXQgdG8gZXZlbnRzLAo+ID4gPiB3aGljaCBpcyB3aHkgSSBkaWQgaXQg
bGlrZSBJIGRpZC4KPiA+ID4gCj4gPiA+IFRoZSBmb2xsb3dpbmcgc2hvdWxkIGZpeCB0aGlzLiAg
WW91IGNvdWxkIGFsc28gaGF2ZSBkaWZmZXJlbnQgbGltaXRzIGZvcgo+ID4gPiByZWNlaXZlIG1l
c3NhZ2VzIGFuZCBldmVudHMsIGJ1dCBJIHRoaW5rIHRoZSBmb2xsb3dpbmcgaXMgbW9yZSBjbGVh
ci4KPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2lu
dGYuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jCj4gPiA+IGluZGV4IDJhNzM5
MTIzMjcwYy4uZTQ2ZjQxNTBjZWI1IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBt
aS9pcG1pX3NpX2ludGYuYwo+ID4gPiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2lu
dGYuYwo+ID4gPiBAQCAtNDEzLDggKzQxMywxMCBAQCBzdGF0aWMgdm9pZCBzdGFydF9nZXR0aW5n
X21zZ19xdWV1ZShzdHJ1Y3Qgc21pX2luZm8gKnNtaV9pbmZvKQo+ID4gPiAKPiA+ID4gIAlzdGFy
dF9uZXdfbXNnKHNtaV9pbmZvLCBzbWlfaW5mby0+Y3Vycl9tc2ctPmRhdGEsCj4gPiA+ICAJCSAg
ICAgIHNtaV9pbmZvLT5jdXJyX21zZy0+ZGF0YV9zaXplKTsKPiA+ID4gLQlzbWlfaW5mby0+bnVt
X3JlcXVlc3RzX2luX2Ffcm93ID0gMDsKPiA+ID4gLQlzbWlfaW5mby0+c2lfc3RhdGUgPSBTSV9H
RVRUSU5HX01FU1NBR0VTOwo+ID4gPiArCWlmIChzbWlfaW5mby0+c2lfc3RhdGUgIT0gU0lfR0VU
VElOR19NRVNTQUdFUykgewo+ID4gPiArCSAgICBzbWlfaW5mby0+bnVtX3JlcXVlc3RzX2luX2Ff
cm93ID0gMDsKPiA+ID4gKwkgICAgc21pX2luZm8tPnNpX3N0YXRlID0gU0lfR0VUVElOR19NRVNT
QUdFUzsKPiA+ID4gKwl9Cj4gPiA+ICB9Cj4gPiA+IAo+ID4gPiAgc3RhdGljIHZvaWQgc3RhcnRf
Z2V0dGluZ19ldmVudHMoc3RydWN0IHNtaV9pbmZvICpzbWlfaW5mbykKPiA+ID4gQEAgLTQyNSw4
ICs0MjcsMTAgQEAgc3RhdGljIHZvaWQgc3RhcnRfZ2V0dGluZ19ldmVudHMoc3RydWN0IHNtaV9p
bmZvICpzbWlfaW5mbykKPiA+ID4gCj4gPiA+ICAJc3RhcnRfbmV3X21zZyhzbWlfaW5mbywgc21p
X2luZm8tPmN1cnJfbXNnLT5kYXRhLAo+ID4gPiAgCQkgICAgICBzbWlfaW5mby0+Y3Vycl9tc2ct
PmRhdGFfc2l6ZSk7Cj4gPiA+IC0Jc21pX2luZm8tPm51bV9yZXF1ZXN0c19pbl9hX3JvdyA9IDA7
Cj4gPiA+IC0Jc21pX2luZm8tPnNpX3N0YXRlID0gU0lfR0VUVElOR19FVkVOVFM7Cj4gPiA+ICsJ
aWYgKHNtaV9pbmZvLT5zaV9zdGF0ZSAhPSBTSV9HRVRUSU5HX0VWRU5UUykgewo+ID4gPiArCSAg
ICBzbWlfaW5mby0+bnVtX3JlcXVlc3RzX2luX2Ffcm93ID0gMDsKPiA+ID4gKwkgICAgc21pX2lu
Zm8tPnNpX3N0YXRlID0gU0lfR0VUVElOR19FVkVOVFM7Cj4gPiA+ICsJfQo+ID4gCj4gPiBUaGFu
a3MuIERvZXMgdGhpcyBjb3JyZWN0bHkgaGFuZGxlIGEgc3RyZWFtIG9mIG1peGVkIHJlY2VpdmUr
ZXZlbnQKPiA+IGZsYWdzLCB0aG91Z2g/IElmIHdlIGJvdW5jZSBiZXR3ZWVuIE1FU1NBR0VTIGFu
ZCBFVkVOVFMsIHdvbid0IHdlIGtlZXAKPiA+IHJlc2V0dGluZyB0aGUgY291bnRlciBvbiBlYWNo
IHN0YXRlIHRyYW5zaXRpb24gYW5kIG5ldmVyIGhpdCB0aGUgbGltaXQ/Cj4gCj4gSXQgc2hvdWxk
LiAgT25jZSB0aGUgbGltaXQgaXMgcmVhY2hlZCBpdCBjbGVhcnMgdGhlIGJpdCBpbiBtc2dfZmxh
Z3MuCj4gVGhhdCBzaG91bGQgcHJldmVudCB0aGUgbWVzc2FnZXMgb3IgZXZlbnRzIGZyb20gYmVp
bmcgcmUtcmVxdWVzdGVkCj4gdW50aWwgdGhlIG5leHQgZmxhZ3MgZmV0Y2guICBTbyBpZiBhIGNv
bnRpbnVvdXMgc3RyZWFtIG9mIG1lc3NhZ2VzCj4gYW5kIGV2ZW50cyB3YXMgY29taW5nIGluLCBp
dCBzaG91bGQgZmV0Y2ggMTAgbWVzc2FnZXMsIGNsZWFyIHRoZSBiaXQsCj4gdGhlbiBmZXRjaCAx
MCBldmVudHMsIHRoZW4gY2xlYXIgdGhhdCBiaXQsIHRoZW4gZ28gYmFjayB0byBub3JtYWwKPiBv
cGVyYXRpb24uCj4gCj4gT2YgY291cnNlLCB0aGUgbmV4dCBmbGFnIGZldGNoIHdpbGwgc3RhcnQg
dGhlIHByb2Nlc3Mgb3Zlci4KCkFjdHVhbGx5LCBwcm9iaW5nIGRlZXBlciwgdGhpcyBwcm9iYWJs
eSB3b24ndCB3b3JrLiAgQW5kIEknbSBub3Qgc3VyZQp0aGVyZSBpcyBtdWNoIEkgY2FuIGRvIHRv
IGZpeCBpdC4gIEl0IHdpbGwgYmUgbXVjaCBoYXJkZXIuICBCdXQgaXQKZGVwZW5kcyBvbiBob3cg
dGhlIEJNQyBoYW5kbGVzIHRoaXMuCgpJZiB0aGVyZSBpcyBzb21ldGhpbmcgaW4gdGhlIGV2ZW50
IHF1ZXVlIG9yIHJlY2VpdmUgbWVzc2FnZSBxdWV1ZSwgdGhlCkJNQyBpcyBzdXBwb3NlZCB0byBz
ZXQgYW4gYXR0ZW50aW9uIGJpdCAoQVRUTikgb24gdGhlIGludGVyZmFjZSAgSWYKQVRUTiBpcyBz
ZXQsIHRoZSBkcml2ZXIgaXMgc3VwcG9zZWQgdG8gZmV0Y2ggZmxhZ3MgdG8ga25vdyB3aGF0IGl0
Cm5lZWRzIHRvIGRvLgoKSSBoYXZlbid0IHRyaWVkLCBidXQgaW4gdGhlIHFlbXUgY2hhbmdlcyBi
ZWxvdywgSSdtIGZhaXJseSBzdXJlIHRoZSBBVFROCmJpdCB3aWxsIG5ldmVyIGdldCBjbGVhcmVk
LCB0aHVzIHdoZW4gaXQgZ29lcyB0aHJvdWdoIGFsbCB0aGlzIHRoZQpLQ1Mgc3RhdGUgbWFjaGlu
ZSB3aWxsIHJldHVybiBTSV9TTV9BVFROIGF0IHRoZSBlbmQgYW5kIHRoZSBmbGFnIGZldGNoCndp
bGwgc3RhcnQgYWdhaW4uICBZb3UgYXJlIHN0aWxsIHdlZGdlZC4KClRoZSBxZW11IHZlcnNpb24g
YWxzbyBydW5zIHdpdGggaW50ZXJydXB0cyBieSBkZWZhdWx0LCB3aGljaCBvbmx5Cm1hZ25pZmll
cyB0aGUgcHJvYmxlbS4gIEluIHRoYXQgY2FzZSwgd2hlbiBBVFROIGlzIHNldCBhbmQgeW91IGFy
ZW4ndApydW5uaW5nIHRyYW5zYWN0aW9ucywgdGhlIGludGVycnVwdCBpcyBlbmFibGVkLiAgT24g
S0NTIHRoZXJlIGlzIG5vIHdheQppbiB0aGUgS0NTIGludGVyZmFjZSB0byBkaXNhYmxlIHRoZSBp
bnRlcnJ1cHQgYXQgdGhlIGludGVyZmFjZSwgeW91IGhhdmUKdG8gc2VuZCBpdCBhIG1lc3NhZ2Ug
b3IgZGlzYWJsZSBpdCB3aXRoIGRpc2FibGVfaXJxKCkuCgpCdXQgdGhlIGFjdHVhbCBmYWlsaW5n
IEJNQyBtYXkgbm90IHdvcmsgdGhpcyB3YXkuICBJdCBtYXkgb3IgbWF5IG5vdApjbGVhciB0aGUg
RXZlbnQgTWVzc2FnZSBCdWZmZXIgRnVsbCBmbGFnLiAgSXQgbWF5IG9yIG1heSBub3QgZG8gYW55
dGhpbmcKd2l0aCBBVFROLgoKQSBkcml2ZXIgY2FuIG9ubHkgZG8gc28gbXVjaCB0byBhY2NvdW50
IGZvciBicm9rZW4gaGFyZHdhcmUuICBUaGUgZHJpdmVyCmlzIGFscmVhZHkgdG9vIGNvbXBsZXgs
IGEgbG90IG9mIGl0IGR1ZSB0byBoYXZpbmcgdG8gaGFuZGxlIGJyb2tlbgpoYXJkd2FyZS4gIEZp
eGluZyB0aGlzIGFkZHMgbW9yZSBjb21wbGV4aXR5IGFuZCBwZW5hbGl6ZXMgaGFyZHdhcmUKdGhh
dCB3b3JrcyBwcm9wZXJseS4KCkFueXdheSwgSSdtIGdvaW5nIHRvIG5lZWQgdG8gZ2V0IHRoaXMg
ZmFpbGluZyBpbiBzaW11bGF0aW9uIGFuZCBmaWd1cmUKb3V0IGhvdyB0byBoYW5kbGUgdGhpcy4g
IFlldCBtb3JlIGlzc3VlcyBtYXkgY29tZSB1cCwgZXNwZWNpYWxseSB3aXRoCmludGVycnVwdHMu
CgpJcyB0aGVyZSBhbnkgd2F5IHlvdSBjYW4ganVzdCBnZXQgdGhlIGhhcmR3YXJlIGZpeGVkPyAg
SXQncyBuZXZlciBnb2luZwp0byB3b3JrIHZlcnkgd2VsbCBhcyBpdCBpcy4gIEknZCBiZSBpbmNs
aW5lZCB0byBqdXN0IGRlbnlsaXN0IGl0LgoKLWNvcmV5Cgo+IAo+ID4gCj4gPiBJIHdhcyBhYmxl
IHRvIGNvb2sgdXAgYSBzaW1wbGUgcmVwcm8gaW4gUWVtdSBmb3IgdGhpcyBjbGFzcyBvZiBidWcu
Cj4gCj4gSSB3YXMgdGhpbmtpbmcgYWJvdXQgaG93IHRvIGRvIGFuIGF1dG9tYXRlZCB0ZXN0IGZv
ciB0aGlzLiAgSSB1c2UgYW4KPiBleHRlcm5hbCBzaW11bGF0ZWQgQk1DIGZvciB0aGUgYXV0b21h
dGVkIHRlc3RzIEkgaGF2ZS4gIFNvIEknbGwgd29yayBpbgo+IHRoYXQgZGlyZWN0aW9uLgo+IAo+
IEJ1dCB0aGFua3MsIHRoaXMgc2hvdWxkIGhlbHAgbWUgZGV2ZWxvcCB0aGF0IHRlc3QuCj4gCj4g
LWNvcmV5Cj4gCj4gPiAKPiA+IC0tLS0+OC0tLS0KPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2h3L2lw
bWkvaXBtaV9ibWNfc2ltLmMgYi9ody9pcG1pL2lwbWlfYm1jX3NpbS5jCj4gPiBpbmRleCBmZDg3
NTQ5MWY1Li4xMjdkYjMwYzAzIDEwMDY0NAo+ID4gLS0tIGEvaHcvaXBtaS9pcG1pX2JtY19zaW0u
Ywo+ID4gKysrIGIvaHcvaXBtaS9pcG1pX2JtY19zaW0uYwo+ID4gQEAgLTI0OSw2ICsyNDksMjEg
QEAgc3RydWN0IElQTUlCbWNTaW0gewo+ID4gICAgICB1aW50OF90IGV2dGJ1ZlsxNl07Cj4gPiAg
Cj4gPiAgICAgIFFUQUlMUV9IRUFEKCwgSVBNSVJjdkJ1ZkVudHJ5KSByY3ZidWZzOwo+ID4gKwo+
ID4gKyAgICAvKgo+ID4gKyAgICAgKiBGYXVsdCBpbmplY3Rpb246IHN0aWNreSBFVkVOVF9NU0df
QlVGRkVSX0ZVTEwuCj4gPiArICAgICAqCj4gPiArICAgICAqIFNpbXVsYXRlcyBhIEJNQyB0aGF0
IGNvbnRpbnVvdXNseSBnZW5lcmF0ZXMgZXZlbnRzIChlLmcuIGFmdGVyIGEKPiA+ICsgICAgICog
Y29sZCByZXNldCBjYXVzZXMgc2Vuc29yIHN0YXRlIGNoYW5nZXMpLiAgT25jZSBhcm1lZCwgZXZl
cnkKPiA+ICsgICAgICogUkVBRF9FVkVOVF9NU0dfQlVGRkVSIHJldHVybnMgc3VjY2VzcyBidXQg
bmV2ZXIgY2xlYXJzIHRoZQo+ID4gKyAgICAgKiBFVlRfQlVGX0ZVTEwgZmxhZywgc3RhcnZpbmcg
d2FpdGluZ19tc2cgaW4gdGhlIFNJIGxheWVyJ3MKPiA+ICsgICAgICogaGFuZGxlX2ZsYWdzKCkg
bG9vcC4gIFJlcHJvZHVjZXMgdGhlIDUxN20yNzcgLyBLUk4tMTIzMyB3ZWRnZS4KPiA+ICsgICAg
ICovCj4gPiArICAgIGJvb2wgICAgIGZpX3N0aWNreV9ldmVudHM7ICAgLyogZW5hYmxlIHZpYSBw
cm9wZXJ0eSAqLwo+ID4gKyAgICB1aW50MzJfdCBmaV9ldnRfYXJtX2FmdGVyOyAgIC8qIGFybSBh
ZnRlciBOIGNvbXBsZXRlZCByZXNwb25zZXMgKi8KPiA+ICsgICAgdWludDMyX3QgZmlfZXZ0X3Jz
cF9jb3VudDsgICAvKiByZXNwb25zZXMgY29tcGxldGVkIHNvIGZhciAqLwo+ID4gKyAgICBib29s
ICAgICBmaV9ldnRfYXJtZWQ7ICAgICAgIC8qIGZhdWx0IGlzIGFjdGl2ZSAqLwo+ID4gKyAgICB1
aW50MzJfdCBmaV9ldnRfcmVhZF9jb3VudDsgIC8qIFJFQURfRVZFTlRfTVNHX0JVRkZFUiBjYWxs
cyBzZXJ2ZWQgKi8KPiA+ICB9Owo+ID4gIAo+ID4gICNkZWZpbmUgSVBNSV9CTUNfTVNHX0ZMQUdf
V0FUQ0hET0dfVElNRU9VVF9NQVNLICAgICAgICAoMSA8PCAzKQo+ID4gQEAgLTQ5NCw3ICs1MDks
NyBAQCBzdGF0aWMgaW50IHNlbF9hZGRfZXZlbnQoSVBNSUJtY1NpbSAqaWJzLCB1aW50OF90ICpl
dmVudCkKPiA+ICBzdGF0aWMgaW50IGF0dG5fc2V0KElQTUlCbWNTaW0gKmlicykKPiA+ICB7Cj4g
PiAgICAgIHJldHVybiBJUE1JX0JNQ19NU0dfRkxBR19SQ1ZfTVNHX1FVRVVFX1NFVChpYnMpCj4g
PiAtICAgICAgICB8fCBJUE1JX0JNQ19NU0dfRkxBR19FVlRfQlVGX0ZVTExfU0VUKGlicykKPiA+
ICsgICAgICAgIHx8ICghaWJzLT5maV9ldnRfYXJtZWQgJiYgSVBNSV9CTUNfTVNHX0ZMQUdfRVZU
X0JVRl9GVUxMX1NFVChpYnMpKQo+ID4gICAgICAgICAgfHwgSVBNSV9CTUNfTVNHX0ZMQUdfV0FU
Q0hET0dfVElNRU9VVF9NQVNLX1NFVChpYnMpOwo+ID4gIH0KPiA+ICAKPiA+IEBAIC03NTAsNiAr
NzY1LDQ4IEBAIHN0YXRpYyB2b2lkIGlwbWlfc2ltX2hhbmRsZV9jb21tYW5kKElQTUlCbWMgKmIs
Cj4gPiAgIG91dDoKPiA+ICAgICAgay0+aGFuZGxlX3JzcChzLCBtc2dfaWQsIHJzcC5idWZmZXIs
IHJzcC5sZW4pOwo+ID4gIAo+ID4gKyAgICAvKgo+ID4gKyAgICAgKiBGYXVsdCBpbmplY3Rpb246
IGNvdW50IGNvbXBsZXRlZCByZXNwb25zZXMgYW5kIGFybSBzdGlja3kKPiA+ICsgICAgICogRVZF
TlRfTVNHX0JVRkZFUl9GVUxMIGFmdGVyIHRoZSBjb25maWd1cmVkIHRocmVzaG9sZC4KPiA+ICsg
ICAgICovCj4gPiArICAgIGlmIChpYnMtPmZpX3N0aWNreV9ldmVudHMgJiYgIWlicy0+ZmlfZXZ0
X2FybWVkKSB7Cj4gPiArICAgICAgICBpYnMtPmZpX2V2dF9yc3BfY291bnQrKzsKPiA+ICsgICAg
ICAgIGlmIChpYnMtPmZpX2V2dF9yc3BfY291bnQgPj0gaWJzLT5maV9ldnRfYXJtX2FmdGVyKSB7
Cj4gPiArICAgICAgICAgICAgaWJzLT5maV9ldnRfYXJtZWQgPSB0cnVlOwo+ID4gKyAgICAgICAg
ICAgIGlicy0+ZmlfZXZ0X3JlYWRfY291bnQgPSAwOwo+ID4gKwo+ID4gKyAgICAgICAgICAgIC8q
Cj4gPiArICAgICAgICAgICAgICogU2VlZCB0aGUgZXZlbnQgYnVmZmVyIHdpdGggYSBzeW50aGV0
aWMgc2Vuc29yIGV2ZW50Cj4gPiArICAgICAgICAgICAgICogKHNlbnNvciB0eXBlIDB4MDEgPSBU
ZW1wZXJhdHVyZSwgZXZlbnQgdHlwZSAweDAxID0KPiA+ICsgICAgICAgICAgICAgKiB0aHJlc2hv
bGQsIGV2ZDEgPSB1cHBlciBjcml0aWNhbCBnb2luZyBoaWdoKS4KPiA+ICsgICAgICAgICAgICAg
KiBUaGlzIG1hdGNoZXMgd2hhdCByZWFsIEJNQ3MgZ2VuZXJhdGUgYWZ0ZXIgYSBjb2xkIHJlc2V0
Lgo+ID4gKyAgICAgICAgICAgICAqLwo+ID4gKyAgICAgICAgICAgIG1lbXNldChpYnMtPmV2dGJ1
ZiwgMCwgMTYpOwo+ID4gKyAgICAgICAgICAgIGlicy0+ZXZ0YnVmWzJdICA9IDB4MDI7IC8qIFN5
c3RlbSBldmVudCByZWNvcmQgKi8KPiA+ICsgICAgICAgICAgICBpYnMtPmV2dGJ1Zls3XSAgPSBp
YnMtPnBhcmVudC5zbGF2ZV9hZGRyOwo+ID4gKyAgICAgICAgICAgIGlicy0+ZXZ0YnVmWzldICA9
IDB4MDQ7IC8qIEZvcm1hdCB2ZXJzaW9uICovCj4gPiArICAgICAgICAgICAgaWJzLT5ldnRidWZb
MTBdID0gMHgwMTsgLyogU2Vuc29yIHR5cGU6IFRlbXBlcmF0dXJlICovCj4gPiArICAgICAgICAg
ICAgaWJzLT5ldnRidWZbMTFdID0gMHgwMTsgLyogU2Vuc29yIG51bWJlciAqLwo+ID4gKyAgICAg
ICAgICAgIGlicy0+ZXZ0YnVmWzEyXSA9IDB4MDE7IC8qIEV2ZW50IHR5cGU6IHRocmVzaG9sZCAq
Lwo+ID4gKyAgICAgICAgICAgIGlicy0+ZXZ0YnVmWzEzXSA9IDB4MDk7IC8qIFVwcGVyIGNyaXRp
Y2FsIGdvaW5nIGhpZ2ggKi8KPiA+ICsgICAgICAgICAgICBpYnMtPmV2dGJ1ZlsxNF0gPSAweDU3
OyAvKiBUaHJlc2hvbGQgdmFsdWUgKi8KPiA+ICsgICAgICAgICAgICBpYnMtPmV2dGJ1ZlsxNV0g
PSAweDAwOyAvKiBTZXF1ZW5jZSAoaW5jcmVtZW50ZWQgb24gcmVhZHMpICovCj4gPiArCj4gPiAr
ICAgICAgICAgICAgaWJzLT5tc2dfZmxhZ3MgfD0gSVBNSV9CTUNfTVNHX0ZMQUdfRVZUX0JVRl9G
VUxMOwo+ID4gKwo+ID4gKyAgICAgICAgICAgIC8qIEVuc3VyZSBldmVudCBtZXNzYWdlIGJ1ZmZl
ciBpcyBlbmFibGVkIGluIGdsb2JhbCBlbmFibGVzCj4gPiArICAgICAgICAgICAgICogc28gdGhl
IGtlcm5lbCBzZWVzIGl0LiAgQWxzbyBlbmFibGUgZXZlbnQgbG9nZ2luZy4KPiA+ICsgICAgICAg
ICAgICAgKi8KPiA+ICsgICAgICAgICAgICBpYnMtPmJtY19nbG9iYWxfZW5hYmxlcyB8PSAoMSA8
PCBJUE1JX0JNQ19FVkVOVF9NU0dfQlVGX0JJVCkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAoMSA8PCBJUE1JX0JNQ19FVkVOVF9MT0dfQklUKTsKPiA+ICsKPiA+
ICsgICAgICAgICAgICBrLT5zZXRfYXRuKHMsIDEsIGF0dG5faXJxX2VuYWJsZWQoaWJzKSk7Cj4g
PiArCj4gPiArICAgICAgICAgICAgZnByaW50ZihzdGRlcnIsICJbRkldIHN0aWNreS1ldmVudHMg
YXJtZWQgYWZ0ZXIgJXUgcmVzcG9uc2VzXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgaWJz
LT5maV9ldnRfcnNwX2NvdW50KTsKPiA+ICsgICAgICAgIH0KPiA+ICsgICAgfQo+ID4gKwo+ID4g
ICAgICBuZXh0X3RpbWVvdXQoaWJzKTsKPiA+ICB9Cj4gPiAgCj4gPiBAQCAtMTAxMyw4ICsxMDcw
LDE0IEBAIHN0YXRpYyB2b2lkIGNscl9tc2dfZmxhZ3MoSVBNSUJtY1NpbSAqaWJzLAo+ID4gIHsK
PiA+ICAgICAgSVBNSUludGVyZmFjZSAqcyA9IGlicy0+cGFyZW50LmludGY7Cj4gPiAgICAgIElQ
TUlJbnRlcmZhY2VDbGFzcyAqayA9IElQTUlfSU5URVJGQUNFX0dFVF9DTEFTUyhzKTsKPiA+ICsg
ICAgdWludDhfdCBjbGVhcl9tYXNrID0gY21kWzJdOwo+ID4gKwo+ID4gKyAgICBpZiAoaWJzLT5m
aV9ldnRfYXJtZWQpIHsKPiA+ICsgICAgICAgIC8qIERvbid0IGFsbG93IGNsZWFyaW5nIEVWVF9C
VUZfRlVMTCB3aGVuIHN0aWNreSBldmVudHMgYWN0aXZlICovCj4gPiArICAgICAgICBjbGVhcl9t
YXNrICY9IH5JUE1JX0JNQ19NU0dfRkxBR19FVlRfQlVGX0ZVTEw7Cj4gPiArICAgIH0KPiA+ICAK
PiA+IC0gICAgaWJzLT5tc2dfZmxhZ3MgJj0gfmNtZFsyXTsKPiA+ICsgICAgaWJzLT5tc2dfZmxh
Z3MgJj0gfmNsZWFyX21hc2s7Cj4gPiAgICAgIGstPnNldF9hdG4ocywgYXR0bl9zZXQoaWJzKSwg
YXR0bl9pcnFfZW5hYmxlZChpYnMpKTsKPiA+ICB9Cj4gPiAgCj4gPiBAQCAtMTA0MCw3ICsxMTAz
LDE5IEBAIHN0YXRpYyB2b2lkIHJlYWRfZXZ0X21zZ19idWYoSVBNSUJtY1NpbSAqaWJzLAo+ID4g
ICAgICBmb3IgKGkgPSAwOyBpIDwgMTY7IGkrKykgewo+ID4gICAgICAgICAgcnNwX2J1ZmZlcl9w
dXNoKHJzcCwgaWJzLT5ldnRidWZbaV0pOwo+ID4gICAgICB9Cj4gPiAtICAgIGlicy0+bXNnX2Zs
YWdzICY9IH5JUE1JX0JNQ19NU0dfRkxBR19FVlRfQlVGX0ZVTEw7Cj4gPiArCj4gPiArICAgIGlm
IChpYnMtPmZpX2V2dF9hcm1lZCkgewo+ID4gKyAgICAgICAgLyoKPiA+ICsgICAgICAgICAqIFN0
aWNreSBtb2RlOiByZXR1cm4gc3VjY2VzcyBidXQga2VlcCBFVlRfQlVGX0ZVTEwgc2V0Lgo+ID4g
KyAgICAgICAgICogVmFyeSB0aGUgZXZlbnQgZGF0YSBzbGlnaHRseSBzbyB0aGUga2VybmVsIGRv
ZXNuJ3QKPiA+ICsgICAgICAgICAqIGRlLWR1cGxpY2F0ZSAoaW5jcmVtZW50IGV2ZDMgYXMgYSBz
ZXF1ZW5jZSBudW1iZXIpLgo+ID4gKyAgICAgICAgICovCj4gPiArICAgICAgICBpYnMtPmZpX2V2
dF9yZWFkX2NvdW50Kys7Cj4gPiArICAgICAgICBpYnMtPmV2dGJ1ZlsxNV0gPSAodWludDhfdCko
aWJzLT5maV9ldnRfcmVhZF9jb3VudCAmIDB4ZmYpOwo+ID4gKyAgICAgICAgLyogRG9uJ3QgY2xl
YXIgdGhlIGZsYWcg4oCUIHN0YXJ2YXRpb24gY29udGludWVzICovCj4gPiArICAgIH0gZWxzZSB7
Cj4gPiArICAgICAgICBpYnMtPm1zZ19mbGFncyAmPSB+SVBNSV9CTUNfTVNHX0ZMQUdfRVZUX0JV
Rl9GVUxMOwo+ID4gKyAgICB9Cj4gPiAgICAgIGstPnNldF9hdG4ocywgYXR0bl9zZXQoaWJzKSwg
YXR0bl9pcnFfZW5hYmxlZChpYnMpKTsKPiA+ICB9Cj4gPiAgCj4gPiBAQCAtMjY3MCw2ICsyNzQ1
LDggQEAgc3RhdGljIGNvbnN0IFByb3BlcnR5IGlwbWlfc2ltX3Byb3BlcnRpZXNbXSA9IHsKPiA+
ICAgICAgREVGSU5FX1BST1BfU1RSSU5HKCJsYW4ubmV0bWFzayIsIElQTUlCbWNTaW0sIGxhbi5h
cmdfbmV0bWFzayksCj4gPiAgICAgIERFRklORV9QUk9QX1NUUklORygibGFuLmRlZmd3X2lwYWRk
ciIsIElQTUlCbWNTaW0sIGxhbi5hcmdfZGVmZ3dfaXBhZGRyKSwKPiA+ICAgICAgREVGSU5FX1BS
T1BfTUFDQUREUigibGFuLmRlZmd3X21hY2FkZHIiLCBJUE1JQm1jU2ltLCBsYW4uZGVmZ3dfbWFj
YWRkciksCj4gPiArICAgIERFRklORV9QUk9QX0JPT0woImZpX3N0aWNreV9ldmVudHMiLCBJUE1J
Qm1jU2ltLCBmaV9zdGlja3lfZXZlbnRzLCBmYWxzZSksCj4gPiArICAgIERFRklORV9QUk9QX1VJ
TlQzMigiZmlfZXZ0X2FybV9hZnRlciIsIElQTUlCbWNTaW0sIGZpX2V2dF9hcm1fYWZ0ZXIsIDQw
KSwKPiA+ICB9Owo+ID4gIAo+ID4gIHN0YXRpYyB2b2lkIGlwbWlfc2ltX2NsYXNzX2luaXQoT2Jq
ZWN0Q2xhc3MgKm9jLCBjb25zdCB2b2lkICpkYXRhKQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
