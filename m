Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A4944341F
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 17:57:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhx5q-0008Pg-Gw; Tue, 02 Nov 2021 16:57:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1mhx5o-0008PQ-VP
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:57:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BFdODkRt0+ODtB2D2Y4xVzO8GHq7mci6lXrUC6cGRTc=; b=TLTG/wcOah/hjmw/K40LP24TSK
 7gx1wCusArfVuQGkebizcl+gymUw9NzfvZ1RgkwlmexekzUe/K0nQ2mVVrB8E/MHbt3xvnSSJBfNB
 RvG3NCHx7/07bu4JzlGO75bjtJm1LQXN/uPNjYOcssuJlESMUr/kh5PdkQxFoFwRNzLY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BFdODkRt0+ODtB2D2Y4xVzO8GHq7mci6lXrUC6cGRTc=; b=RIdOnTKf5Oryf+zV2Aa8BjJnHw
 UhnM9gzu0o5Pjc1bSl1maXXsO5asbKYyepAaLKvjLU7sKhY8vtcsqiQ0xCZhQtDORp5Dk6Pp3RHeR
 /I6KregzVUGxvEwtHPcmO1CR4zB9yH0KDw5rZFIG5XisRNrIB0IR63ZG1ZO37HynWeeE=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhx5n-00FBZK-Mn
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:57:00 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218224747"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="218224747"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:35:34 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="583666391"
Received: from nlibermx-mobl.amr.corp.intel.com (HELO [10.209.55.177])
 ([10.209.55.177])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:35:32 -0700
Message-ID: <edaeb540-aa31-d143-4320-cb2a73f0070f@linux.intel.com>
Date: Tue, 2 Nov 2021 09:35:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Joel Stanley <joel@jms.id.au>, ChiaWei Wang <chiawei_wang@aspeedtech.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-5-jae.hyun.yoo@intel.com>
 <HK0PR06MB3779F8E273396ED805EE5D81918B9@HK0PR06MB3779.apcprd06.prod.outlook.com>
 <CACPK8XesLdb+Cbi3ZYrOahRHbXQi3L=cQXax=RV2=PrjiPQBew@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <CACPK8XesLdb+Cbi3ZYrOahRHbXQi3L=cQXax=RV2=PrjiPQBew@mail.gmail.com>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/1/2021 8:28 PM, Joel Stanley wrote: > On Tue, 2 Nov
 2021 at 03:16, ChiaWei Wang <chiawei_wang@aspeedtech.com> wrote: >> >> Hi
 Jae, >> >>> From: linux-arm-kernel <linux-arm-kernel-bounces@lists.i [...]
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: spinics.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mhx5n-00FBZK-Mn
Subject: Re: [Openipmi-developer] [PATCH -next 4/4] ipmi: kcs_bmc_aspeed:
 add clock control logic
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ryan Chen <ryan_chen@aspeedtech.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 "jae.hyun.yoo@intel.com" <jae.hyun.yoo@intel.com>,
 Cedric Le Goater <clg@kaod.org>, Jenmin Yuan <jenmin_yuan@aspeedtech.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMTEvMS8yMDIxIDg6MjggUE0sIEpvZWwgU3RhbmxleSB3cm90ZToKPiBPbiBUdWUsIDIgTm92
IDIwMjEgYXQgMDM6MTYsIENoaWFXZWkgV2FuZyA8Y2hpYXdlaV93YW5nQGFzcGVlZHRlY2guY29t
PiB3cm90ZToKPj4KPj4gSGkgSmFlLAo+Pgo+Pj4gRnJvbTogbGludXgtYXJtLWtlcm5lbCA8bGlu
dXgtYXJtLWtlcm5lbC1ib3VuY2VzQGxpc3RzLmluZnJhZGVhZC5vcmc+IE9uCj4+Pgo+Pj4gRnJv
bTogSmFlIEh5dW4gWW9vIDxqYWUuaHl1bi55b29AbGludXguaW50ZWwuY29tPgo+Pj4KPj4+IElm
IExQQyBLQ1MgZHJpdmVyIGlzIHJlZ2lzdGVyZWQgYWhlYWQgb2YgbHBjLWN0cmwgbW9kdWxlLCBM
UEMgS0NTIGJsb2NrIHdpbGwgYmUKPj4+IGVuYWJsZWQgd2l0aG91dCBoZWFydCBiZWF0aW5nIG9m
IExDTEsgdW50aWwgbHBjLWN0cmwgZW5hYmxlcyB0aGUgTENMSy4gVGhpcwo+Pj4gaXNzdWUgY2F1
c2VzIGltcHJvcGVyIGhhbmRsaW5nIG9uIGhvc3QgaW50ZXJydXB0cyB3aGVuIHRoZSBob3N0IHNl
bmRzCj4+PiBpbnRlcnJ1cHRzIGluIHRoYXQgdGltZSBmcmFtZS4KPj4+IFRoZW4ga2VybmVsIGV2
ZW50dWFsbHkgZm9yY2libHkgZGlzYWJsZXMgdGhlIGludGVycnVwdCB3aXRoIGR1bXBpbmcgc3Rh
Y2sgYW5kCj4+PiBwcmludGluZyBhICdub2JvZHkgY2FyZWQgdGhpcyBpcnEnIG1lc3NhZ2Ugb3V0
Lgo+Pj4KPj4+IFRvIHByZXZlbnQgdGhpcyBpc3N1ZSwgYWxsIExQQyBzdWIgZHJpdmVycyBzaG91
bGQgZW5hYmxlIExDTEsgaW5kaXZpZHVhbGx5IHNvIHRoaXMKPj4+IHBhdGNoIGFkZHMgY2xvY2sg
Y29udHJvbCBsb2dpYyBpbnRvIHRoZSBMUEMgS0NTIGRyaXZlci4KPj4KPj4gSGF2ZSBhbGwgTFBD
IHN1YiBkcml2ZXJzIGNvdWxkIHJlc3VsdCBpbiBlbnRpcmUgTFBDIGJsb2NrIGRvd24gaWYgYW55
IG9mIHRoZW0gZGlzYWJsZXMgdGhlIGNsb2NrIChlLmcuIGRyaXZlciB1bmxvYWQpLgo+PiBUaGUg
TFBDIGRldmljZXMgc3VjaCBhcyBTSU8gY2FuIGJlIHVzZWQgYmVmb3JlIGtlcm5lbCBib290aW5n
LCBldmVuIHdpdGhvdXQgYW55IEJNQyBmaXJtd2FyZS4KPj4gVGhlcmVieSwgd2UgcmVjb21tZW5k
IHRvIG1ha2UgTENMSyBjcml0aWNhbCBvciBndWFyZGVkIGJ5IHByb3RlY3RlZCBjbG9jayBpbnN0
ZWFkIG9mIGhhdmluZyBhbGwgTFBDIHN1YiBkcml2ZXJzIGhvbGQgdGhlIExDTEsgY29udHJvbC4K
Pj4KPj4gVGhlIHByZXZpb3VzIGRpc2N1c3Npb24gZm9yIHlvdXIgcmVmZXJlbmNlOgo+PiBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAyMC85LzI4LzE1Mwo+IAo+IFBsZWFzZSByZWFkIHRoZSBlbnRp
cmUgdGhyZWFkLiBUaGUgY29uY2x1c2lvbjoKPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvQ0FDUEs4WGRCbWtoWjhtY1NGbURBRlY4azdRajdhakJMOFRWS2ZLOGMrNWFuZVVNSFp3QG1h
aWwuZ21haWwuY29tLwo+IAo+IFRoYXQgaXMsIGZvciB0aGUgZGV2aWNlcyB0aGF0IGhhdmUgYSBk
cml2ZXIgbG9hZGVkIGNhbiBlbmFibGUgdGhlCj4gY2xvY2suIFdoZW4gdGhleSBhcmUgdW5sb2Fk
ZWQsIHRoZXkgd2lsbCByZWR1Y2UgdGhlIHJlZmVyZW5jZSBjb3VudAo+IHVudGlsIHRoZSBsYXN0
IGRyaXZlciBpcyB1bmxvYWRlZC4gZWc6Cj4gCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20v
bGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2Nsay9jbGsuYyNMOTQ1Cj4gCj4gVGhlcmUgd2Fz
IGFub3RoZXIgZm9yayB0byB0aGUgdGhyZWFkLCB3aGVyZSB3ZSBzdWdnZXN0ZWQgdGhhdCBhCj4g
cHJvdGVjdGVkIGNsb2NrcyBiaW5kaW5nIGNvdWxkIGJlIGFkZGVkOgo+IAo+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8xNjAyNjk1NzczMTEuODg0NDk4Ljg0MjkyNDUxNDA1MDkzMjYzMThA
c3dib3lkLm10di5jb3JwLmdvb2dsZS5jb20vCj4gCj4gSWYgeW91IHdpc2ggdG8gdXNlIHRoaXMg
bWVjaGFuaXNtIGZvciBlZy4gU0lPIGNsb2NrcywgdGhlbiBJIGVuY291cmFnZQo+IEFzcGVlZCB0
byBzdWJtaXQgYSBwYXRjaCB0byBkbyB0aGF0LgoKV2UgYXJlIHJldmlzaXRpbmcgdGhlIGFnZWQg
ZGlzY3Vzc2lvbi4gVGhhbmtzIGZvciBicmluZ2luZyBpdCBiYWNrLgoKSSBhZ3JlZSB3aXRoIEpv
ZWwgdGhhdCBhIGNsb2NrIHNob3VsZCBiZSBlbmFibGVkIG9ubHkgb24gc3lzdGVtcyB0aGF0Cm5l
ZWQgdGhlIGNsb2NrIGFjdHVhbGx5IHNvIGl0IHNob3VsZCBiZSBjb25maWd1cmFibGUgYnkgYSBk
ZXZpY2UgZHJpdmVyCm9yIHRocm91Z2ggZGV2aWNlIHRyZWUgc2V0dGluZyzCoG5vdCBieSB0aGUg
c3RhdGljIHNldHRpbmcgaW4KY2xrLWFzdDI2MDAuYyBjb2RlLiBTbyB0aGF0J3MgdGhlIHJlYXNv
biB3aHkgSSBzdG9wcGVkIHVwc3RyZWFtaW5nIGJlbG93CmNoYW5nZSBmb3IgbWFraW5nIEJDTEsg
YXMgYSBjcml0aWNhbCBjbG9jay4KCmh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4
LWNsay9tc2c0NDgzNi5odG1sCgpJbnN0ZWFkLCBJIHN1Ym1pdHRlZCB0aGVzZSB0d28gY2hhbmdl
cyB0byBtYWtlIGl0IGNvbmZpZ3VyYWJsZSB0aHJvdWdoCmRldmljZSB0cmVlIHNldHRpbmcuCgpo
dHRwczovL2xpc3RzLm96bGFicy5vcmcvcGlwZXJtYWlsL2xpbnV4LWFzcGVlZC8yMDIwLUphbnVh
cnkvMDAzMzk0Lmh0bWwKaHR0cHM6Ly9saXN0cy5vemxhYnMub3JnL3BpcGVybWFpbC9saW51eC1h
c3BlZWQvMjAyMC1KYW51YXJ5LzAwMzMzOS5odG1sCgpCdXQgdGhlc2Ugd2VyZSBub3QgYWNjZXB0
ZWQgdG9vLgoKQW5kIHJlY2VudGx5LCBTYW11ZWwgaW50cm9kdWNlZCBhIGJldHRlciBhbmQgbW9y
ZSBnZW5lcmljIHdheS4KCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIwMDkwMzA0MDAx
NS41NjI3LTItc2FtdWVsQHNob2xsYW5kLm9yZy8KCkJ1dCBpdCdzIG5vdCBhY2NlcHRlZMKgeWV0
IGVpdGhlci4KCgpDaGlhd2VpLAoKUGxlYXNlIHJlZmluZSB0aGUgbWVjaGFuaXNtIGFuZCBzdWJt
aXQgYSBjaGFuZ2UgdG8gbWFrZSBTSU8gY2xvY2tzCmNvbmZpZ3VyYWJsZSB0aHJvdWdoIGRldmlj
ZSB0cmVlIHNldHRpbmcuIEkgYmVsaWV2ZcKgdGhhdCB3ZSBjYW4ga2VlcAp0aGlzIHBhdGNoIHNl
cmllcyBldmVuIHdpdGggdGhlIGNoYW5nZSwgb3IgaXQgY2FuIGJlIG1vZGlmaWVkIGFuZAphZGp1
c3RlZCBpZiBuZWVkZWQgYWZ0ZXIgdGhlIFNJTyBjbG9ja3MgZml4IGlzIGFjY2VwdGVkLgoKVGhh
bmtzLApKYWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
