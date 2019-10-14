Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 866A7D6442
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Oct 2019 15:42:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iK0bm-0007aw-Gm; Mon, 14 Oct 2019 13:41:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iK0bl-0007ad-Cc
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 13:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ctljzG8XsuHwedzDQ8bWIkMpnGRAnboTj8ThfulIEtQ=; b=VDqOY1vLIPJWND9ZZIqZZ03aHy
 AP7fo4Z8okWxdutVK0xAAMemYGECq6k42P0yAukmJgrFhXUKU52o4HpLUY4aDH9jST04NSte+VSKG
 u9bqgqLlOcqdux0w5v4YaeY2vfIja4sKjZu9oYduQI+WvdK7u0O8Abvs+/cHFf26BJ/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ctljzG8XsuHwedzDQ8bWIkMpnGRAnboTj8ThfulIEtQ=; b=QCTGlXDQT/+jIK77Z1fFNucj5y
 yh0dbPUolFJ2ivNnzw0EGXlOzjOxNDMRtLTLTd2j3AtykcRZlIwWLig1qHcnaMl1dvvbLtCNgnQj3
 xXr1RLaCPTAQXmfSxk07825myKo2M5Cs/4ZKNNHBvPdWbYM8fUmO5B2nAnM7INETe1fM=;
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iK0be-008jWg-BH
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 13:41:57 +0000
Received: by mail-oi1-f173.google.com with SMTP id w6so13717202oie.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Oct 2019 06:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ctljzG8XsuHwedzDQ8bWIkMpnGRAnboTj8ThfulIEtQ=;
 b=hug35AIR+pE6TZhbr+2cA10gqTt/ejSGHmbkchTnNjLB3T9fhAyWLlPIEozdxjNLtr
 MK/MDMfF8VYbZYtiT8G4aCKK6QN/5FeI05nbpW/LlUJtJc9gSj6/wKkGhRbLFzK0bQVK
 PxmtJnUVYFzTqEBEVD6Dd6uPKgca8/JdOiUKN1RI2DcVrOMi7/+HphCwIDvt+G+W4GZw
 KXMOb+CgPsFo+4E25unrTtfl25GgDNl15ZnGBpuPL5lQ5sd0JCwQO8hviVpuI93K74QM
 3fy62SQEkEmheDBJbDJrJjDvDpxOBc+9iMd0HRvSMFr2ORWLbGiWQ9CPQC7LStNmAgwv
 4/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=ctljzG8XsuHwedzDQ8bWIkMpnGRAnboTj8ThfulIEtQ=;
 b=dyA+XZHuVKAEo4H3kfX2whEhq/AZHBaRhi8RLeeuahjqH61UY5ZpwXYOfKCuQ5vSBX
 BeuDTGAHrwG+Gi6/0x3xf1llHOt9rbB025Qb8VlxhCNPqsSDaG4ARVBBCUp7XO4/zvyr
 OQLxV2HNXbUir6KZ79ry5A/EPFy2d7+uo7hGH5/Xs117TRigOrTzg3KxRDmDMYCAGJKx
 5ID74lMxIsA9U8zZjKAcjGYFQPToTs8lB3iBWkRVl80pXDI+tYOBcmM4HybvnvOl4bMx
 yQ7a1KWzeMKm4ZDl9C4bCvrU69ON260+ijuZhyPaciYC4OQH1wBJXQAlKYIVt/rgA/me
 Eu2A==
X-Gm-Message-State: APjAAAUd0JAWy36dm9PODFGKH0nseWVJac3SOopFsuxKjdRU+N6ggMvz
 3k2ZtUGDtx1p+akRkKkdKmN0UFM=
X-Google-Smtp-Source: APXvYqwW+wYs+ziHEZq52ACknyWfYXazsur4JYfnPVGUyKt6HhRr3H8nSDEoTiJk8aFsik+cU+1CHQ==
X-Received: by 2002:a05:6808:9ad:: with SMTP id
 e13mr23200328oig.90.1571060503984; 
 Mon, 14 Oct 2019 06:41:43 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 13sm5150257oij.25.2019.10.14.06.41.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 06:41:43 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 98AA4180044;
 Mon, 14 Oct 2019 13:41:42 +0000 (UTC)
Date: Mon, 14 Oct 2019 08:41:41 -0500
From: Corey Minyard <minyard@acm.org>
To: tony camuso <tcamuso@redhat.com>
Message-ID: <20191014134141.GA25427@t560>
References: <cbf409f1-9055-5786-eae8-8fff422038be@redhat.com>
 <20191010131758.GB14172@t560>
 <41768c2f-6ef4-4215-2f5b-ea04328e7165@redhat.com>
 <4ade906b-32f3-137c-49d1-dceb942fcade@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ade906b-32f3-137c-49d1-dceb942fcade@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.173 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iK0be-008jWg-BH
Subject: Re: [Openipmi-developer] ipmi kmods can be unloaded even when
 userspace is accessing /dev/ipmi0
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
Cc: cminyard@mvista.com, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMDc6MzQ6NTFBTSAtMDQwMCwgdG9ueSBjYW11c28gd3Jv
dGU6Cj4gT24gMTAvMTAvMTkgMjowMSBQTSwgdG9ueSBjYW11c28gd3JvdGU6Cj4gPiBPbiAxMC8x
MC8xOSA5OjE3IEFNLCBDb3JleSBNaW55YXJkIHdyb3RlOgo+ID4gPiBPbiBXZWQsIE9jdCAwOSwg
MjAxOSBhdCAwMToyNzoyOFBNIC0wNDAwLCB0b255IGNhbXVzbyB3cm90ZToKPiA+ID4gPiAKPiA+
ID4gPiBPbmUgb2Ygb3VyIHZlbmRvcnMgcmVwb3J0cyB0aGF0IHRoZSBmb2xsb3dpbmcgY29tbWl0
IC4uLgo+ID4gPiA+IAo+ID4gPiA+IGNvbW1pdCBlODZlZTJkNDRiNDQwNTYyNDNkYTE3YzEyMGFk
MjU4NzE3Y2VkZjliCj4gPiA+ID4gQXV0aG9yOiBDb3JleSBNaW55YXJkIDxjbWlueWFyZEBtdmlz
dGEuY29tPgo+ID4gPiA+IERhdGU6wqDCoCBUaHUgQXByIDUgMjI6MDU6MDQgMjAxOCAtMDUwMAo+
ID4gPiA+IAo+ID4gPiA+IMKgwqDCoMKgIGlwbWk6IFJld29yayBsb2NraW5nIGFuZCBzaHV0ZG93
biBmb3IgaG90IHJlbW92ZQo+ID4gPiA+IMKgwqDCoMKgIFRvIGhhbmRsZSBob3QgcmVtb3ZlIG9m
IGludGVyZmFjZXMsIGEgbG90IG9mIHJld29yayBoYWQgdG8gYmUKPiA+ID4gPiDCoMKgwqDCoCBk
b25lIHRvIHRoZSBsb2NraW5nLsKgIFNldmVyYWwgdGhpbmdzIHdlcmUgc3dpdGNoZWQgb3ZlciB0
byBzcmN1Cj4gPiA+ID4gwqDCoMKgwqAgYW5kIHNodXRkb3duIGZvciB1c2VycyBhbmQgaW50ZXJm
YWNlcyB3YXMgYWRkZWQgZm9yIGNsZWFuZXIKPiA+ID4gPiDCoMKgwqDCoCBzaHV0ZG93bi4KPiA+
ID4gPiDCoMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBDb3JleSBNaW55YXJkIDxjbWlueWFyZEBtdmlz
dGEuY29tPgo+ID4gPiA+IAo+ID4gPiA+IC4uLiBhcHBlYXJzIHRvIGhhdmUgbWFkZSBpdCBwb3Nz
aWJsZSB0byB1bmxvYWQgaXBtaSBrbW9kcyB3aGVuIHVzZXJzcGFjZQo+ID4gPiA+IGlzIGFjY2Vz
c2luZyAvZGV2L2lwbWkwCj4gPiA+ID4gCj4gPiA+ID4gSXMgdGhpcyBhbiBpbnRlbmRlZCBiZWhh
dmlvcj8KPiA+ID4gCj4gPiA+IEhtbS7CoCBJdCBraW5kIG9mIHdhcywgeW91IHNob3VsZCBiZSBh
YmxlIHRvIHVubG9hZCBpcG1pX3NpIG9yIGlwbWlfc3NpZiwKPiA+ID4gYnV0IG5vdCBpcG1pX21z
Z2hhbmRsZXIgb3IgaXBtaV9kZXZpbnRmLsKgIElmIGEgcHJvZ3JhbSBpcyB1c2luZyB0aGUKPiA+
ID4gZGV2aWNlLCBpdCB3aWxsIGp1c3QgZ2V0IGVycm9ycy4KPiA+ID4gCj4gPiA+IFRoaXMgd2Fz
IGFsbCBhZGRlZCBiZWNhdXNlIG9mIGRldmljZXMgdGhhdCBjb3VsZCBiZSBkeW5hbWljYWxseSBy
ZW1vdmVkCj4gPiA+IHdpdGhvdXQgd2FybmluZy7CoCBUaGUgYmVoYXZpb3IgeW91IGFyZSByZWZl
cmVuY2luZyBpcyBzb3J0IG9mIGEgc2lkZQo+ID4gPiBlZmZlY3Qgb2YgdGhhdDsgaXQgd291bGQg
aGF2ZSB0YWtlbiBzb21lIGV4dHJhIGNvZGUgdG8ga2VlcCB0aGUgbW9kdWxlCj4gPiA+IGZyb20g
dW5sb2FkLCBhbmQgbXkgYXNzdW1wdGlvbiB3YXMgdGhhdCBhbnlvbmUgdW5sb2FkaW5nIGEgbW9k
dWxlCj4gPiA+IGluZGVuZGVkIHRoaXMuCj4gPiA+IAo+ID4gPiBJZiB0aGlzIGlzIGNhdXNpbmcg
YSBwcm9ibGVtLCBpdCBjYW4gYmUgbW9kaWZpZWQuCj4gPiA+IAo+ID4gPiAtY29yZXkKPiA+ID4g
Cj4gPiAKPiA+IFRoYW5rcywgQ29yZXkuIEknbGwgY2hlY2sgd2l0aCB0aGUgdmVuZG9yLgo+IAo+
IFZlbmRvciBpcyBhc2tpbmcgZm9yIGFuIGlwbWkgaG90LXBsdWcgc3BlYy4gSSBjb3VsZG4ndCBm
aW5kIGl0IGluIHRoZSAyLjAgc3BlYy4KPiBUaGV5IHdpbGwgYWRhcHQgaWYgdGhlcmUgaXMgYSBz
cGVjLgo+IAoKVGhlcmUgaXMgbm8gaG90LXBsdWcgc3BlYy4gIEknbGwgbG9vayBhdCBhZGRpbmcg
c29tZXRoaW5nLiAgSSB0cnkgdG8Ka2VlcCB0aGluZ3Mgc2ltaWxhciB0byBpMmMsIGFuZCBpdCBs
b2NrcyB0aGUgbW9kdWxlLgoKLWNvcmV5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBt
aS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
