Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A3F7704F
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jul 2019 19:30:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hr43A-0006k4-Eo; Fri, 26 Jul 2019 17:30:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <haiyue.wang@linux.intel.com>) id 1hr438-0006jx-SY
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 17:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w5qvkxbVeQRptSrkjdufvtkz0a+3bfUfGHCOxd/fQTM=; b=Md2yB6ncID/XGKlWfL8rMXgniy
 ph7vLeiHq9yYlN1T3QKL5LUv4LP2gGWoVaQlaCS/pniuMyNebeMhsDMOu+cfJfMjCgjfHeRWR8N5O
 6diqEdlKPRfR52OBq5Fv2dlmvPQ8BW174AiXQKJpkW9dkQGwLL6alaxBP3bYd0NAr2fA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w5qvkxbVeQRptSrkjdufvtkz0a+3bfUfGHCOxd/fQTM=; b=C3U0X5XP2UDj5wvtbHGoM5eKVC
 t/KjjeFM6e9aqIS6BbbWUlhp/uyYWAMbAiUBfsCt5QHarZA1RQ2WN8h3l6gv+GTrP9UaUK/AxRx9T
 KpAcCE7ArkuShaSAd466vo5GK/JR642liSCUoOp24ndY0dGh9VJJAlXXxi4T8GRb6SME=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hr436-0005sP-Uk
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 17:30:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="369611738"
Received: from haiyuewa-mobl.ccr.corp.intel.com (HELO [10.255.31.18])
 ([10.255.31.18])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2019 10:30:25 -0700
To: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-16-andrew@aj.id.au>
From: "Wang, Haiyue" <haiyue.wang@linux.intel.com>
Message-ID: <89ea7e21-944e-3d89-05b7-2dedb7916fa9@linux.intel.com>
Date: Sat, 27 Jul 2019 01:30:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726053959.2003-16-andrew@aj.id.au>
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hr436-0005sP-Uk
Subject: Re: [Openipmi-developer] [RFC PATCH 15/17] ipmi: kcs: aspeed:
 Implement v2 bindings
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CtTaIDIwMTktMDctMjYgMTM6MzksIEFuZHJldyBKZWZmZXJ5INC0tcA6Cj4gVGhlIHYyIGJpbmRp
bmdzIGFsbG93IHVzIHRvIGV4dHJhY3QgdGhlIHJlc291cmNlcyBmcm9tIHRoZSBkZXZpY2V0cmVl
Lgo+IFRoZSB0YWJsZSBpbiB0aGUgZHJpdmVyIGlzIHJldGFpbmVkIHRvIGRlcml2ZSB0aGUgY2hh
bm5lbCBpbmRleCwgd2hpY2gKPiByZW1vdmVzIHRoZSBuZWVkIGZvciBrY3NfY2hhbiBwcm9wZXJ0
eSBmcm9tIHRoZSB2MSBiaW5kaW5ncy4gVGhlIHYyCj4gYmluZGluZ3MgYWxsb3cgdXMgdG8gcmVk
dWNlIHRoZSBudW1iZXIgb2Ygd2FybmluZ3MgZ2VuZXJhdGVkIGJ5IHRoZQo+IGV4aXN0aW5nIGRl
dmljZXRyZWUgbm9kZXMuCj4KPiBDYzogSGFpeXVlIFdhbmc8aGFpeXVlLndhbmdAbGludXguaW50
ZWwuY29tPgo+IENjOiBDb3JleSBNaW55YXJkPG1pbnlhcmRAYWNtLm9yZz4KPiBDYzogQXJuZCBC
ZXJnbWFubjxhcm5kQGFybmRiLmRlPgo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW48Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc+Cj4gQ2M6b3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJldyBKZWZmZXJ5PGFuZHJld0Bhai5pZC5hdT4K
PiAtLS0KPiAgIGRyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgfCAxNTYgKysrKysr
KysrKysrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMjcgaW5zZXJ0aW9u
cygrKSwgMjkgZGVsZXRpb25zKC0pCgpMb29rcyBnb29kLCB0aGFua3MgZm9yIHRoZSBoYXJkIHdv
cmssIHRoZSBjb2RlIGlzIG1vcmUgY2xlYW4hIDopCgpSZXZpZXdlZC1ieTogSGFpeXVlIFdhbmcg
PGhhaXl1ZS53YW5nQGxpbnV4LmludGVsLmNvbT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApP
cGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
