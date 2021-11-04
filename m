Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C1D4456E6
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Nov 2021 17:09:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mifJI-0000Pb-VT; Thu, 04 Nov 2021 16:09:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1mifJH-0000PF-19
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Nov 2021 16:09:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7jTfmaOkDu3zzo00d8ENE2ep2vZ/6BjdZBlgfNL4yxY=; b=MNPgSCItm3P6t4HyuiKJ6qqbp6
 E9hPbMWHglU2dc9sqDaRJmaytDlUdjMVg7mFRrssbphVxp8q77Rc632Sher2GvhLA8XrwSF9dPRBk
 9Lpz5lp5xaWBs9/NhIUdpULMV1z2u2cCG745XkvODRwB0J/c0iEZuKxo2Ky2hUWc4JCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7jTfmaOkDu3zzo00d8ENE2ep2vZ/6BjdZBlgfNL4yxY=; b=DT+00ej5Y+s0X323Oij7RRhMLW
 wNtTuI0Jp4WfV6BaT8q71dDS57OPt3pIrOclaA2XrMuoLl8n5YEFVM1Yvh5yfI9Sm4ojGIhLS/cxY
 jEAhb52d0ns92Xwrfcn+tXMVGjlOiVC3Y3TV1hEX39mztMAyf2NPSZT2bFfG2EXxs/Ws=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mifJE-0003pl-RB
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Nov 2021 16:09:49 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="292569347"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="292569347"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:09:42 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="468519314"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.209.121.122])
 ([10.209.121.122])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:09:41 -0700
Message-ID: <f9203632-4730-dba6-49a7-240b45a00bed@linux.intel.com>
Date: Thu, 4 Nov 2021 09:09:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Zev Weiss <zev@bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
 <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
 <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
 <YYHhMGm4C0srTW1x@hatter.bewilderbeest.net>
 <768252cc-2466-3b4b-9087-549b83e00a81@linux.intel.com>
 <YYM78OxYMYwiFzWD@hatter.bewilderbeest.net>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <YYM78OxYMYwiFzWD@hatter.bewilderbeest.net>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/3/2021 6:48 PM, Zev Weiss wrote: > On Wed, Nov 03, 2021
 at 08:56:10AM PDT, Jae Hyun Yoo wrote: >> >> Hi Zev, >> >> Not sure but looks
 like one of LPC functions is enabled while kernel >> booting [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [134.134.136.31 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mifJE-0003pl-RB
Subject: Re: [Openipmi-developer] [PATCH -next 0/4] Add LCLK control into
 Aspeed LPC sub drivers
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMTEvMy8yMDIxIDY6NDggUE0sIFpldiBXZWlzcyB3cm90ZToKPiBPbiBXZWQsIE5vdiAwMywg
MjAyMSBhdCAwODo1NjoxMEFNIFBEVCwgSmFlIEh5dW4gWW9vIHdyb3RlOgo+Pgo+PiBIaSBaZXYs
Cj4+Cj4+IE5vdCBzdXJlIGJ1dCBsb29rcyBsaWtlIG9uZSBvZiBMUEMgZnVuY3Rpb25zIGlzIGVu
YWJsZWQgd2hpbGUga2VybmVsCj4+IGJvb3RpbmcuCj4gCj4gTG9va3MgbGlrZSB0aGF0IHdhcyBl
eGFjdGx5IHRoZSBjbHVlIEkgbmVlZGVkIC0tIG9idmlvdXMgaW4gcmV0cm9zcGVjdCwgCj4gYnV0
IEkgcmVhbGl6ZSBub3cgdGhhdCBJJ20gb25seSBzZWVpbmcgdGhpcyBoYXBwZW4gd2hlbiBJIGJ5
cGFzcyB0aGUgCj4gbm9ybWFsIHNodXRkb3duIHNlcXVlbmNlIHZpYSAncmVib290IC1mJzsgd2l0
aCBhIHBsYWluICdyZWJvb3QnIEkgZG9uJ3QgCj4gaGl0IGFueSBwcm9ibGVtcy7CoCBDYW4geW91
IHJlcHJvZHVjZSBpdCB0aGF0IHdheT8KCk15IHN5c3RlbSBkb2Vzbid0IGZvbGxvdyB0aGUgcmVw
cm9kdWN0aW9uIHBhdHRlcm4uIFdoYXQgSSB1c3VhbGx5IGRvIHRvCnJlcHJvZHVjZSBpdCBpcywg
bWFraW5nIGEgaG9zdCByZXNldCBhbmQgZm9sbG93ZWQgYnkgbWFraW5nIGEgQk1DIHJlc2V0CnRo
ZW4gaG9zdCB3aWxsIHRyeSB0byBzZW5kIHNvbWV0aGluZyB0aHJvdWdoIEtDUyBjaGFubmVsIGFu
ZCBzbm9vcC04MAp3aGlsZSBCTUMgTFBDIGRyaXZlcnMgYXJlIGJlaW5nIGxvYWRlZC4gSXQncyBu
b3QgZWFzeSB0byByZXByb2R1Y2UgaXQKdXNpbmcgbXkgc3lzdGVtIGFuZCBpdCdzIHZlcnkgdGlt
aW5nIHNlbnNpdGl2ZS4KCkFzIEkgc3VnZ2VzdGVkIGluIHByZXZpb3VzIGVtYWlsLCBkaXNhYmxl
IGFsbCBMUEMgc3ViIGZ1bmN0aW9ucyBhbmQKZW5hYmxlIGJhY2sgb25lIGJ5IG9uZS4gSXQgY291
bGQgaGVscCBmb3IgaWRlbnRpZnlpbmcgd2hpY2ggTFBDIHN1Ygptb2R1bGUgY2F1c2VzIHRoZSBp
c3N1ZS4KCi1KYWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
