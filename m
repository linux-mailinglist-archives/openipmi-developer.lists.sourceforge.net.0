Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C22F485C05A
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Feb 2024 16:52:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rcSQ7-00076L-Kn;
	Tue, 20 Feb 2024 15:52:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pmenzel@molgen.mpg.de>) id 1rcSQ6-00076F-9W
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 15:52:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QW4vo7KY7TjTf7t8b02mZpa5q6bvAQKtu0IYCFKj8jw=; b=E4BbiT01IU8SRweEVpkCbklkwS
 RfIZXZc5og1OF+CqPmdkyfHH2mZpD4q8g/ggz3oLoGNQy20aSQv9WdB+FpD1PopaScm5KVyhgVjCr
 4ov/y3x/3lSX0h9qib1F8b4mEopKh00z0F668YoW/vScaE37nWEm1IV8oz1jNGzqIoAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QW4vo7KY7TjTf7t8b02mZpa5q6bvAQKtu0IYCFKj8jw=; b=axmK/qhXD/Xm4Y+1gtl4Jgyay7
 AtKv1PLB/nNa/3ASVTniUZXxDT8j+Cfwr3krw3iO2rxAxwI+7CqqZ2xwzVnxWUO1vZK6ib2YQMygb
 3e1rA7UbTQp77UMOgVlyqLEVMY6oUNLeatXjikUpQ29BIkEkGPuK9T4v0knCWHCK/88Q=;
Received: from mx3.molgen.mpg.de ([141.14.17.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rcSQ2-0002jI-VN for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 15:52:34 +0000
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 35D0E61E5FE01;
 Tue, 20 Feb 2024 16:51:23 +0100 (CET)
Message-ID: <a9169894-6972-49c0-a1d4-d80863f5b511@molgen.mpg.de>
Date: Tue, 20 Feb 2024 16:51:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andrew Geissler <geissonator@gmail.com>
References: <20240220123615.963916-1-geissonator@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240220123615.963916-1-geissonator@gmail.com>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Andrew,
 Thank you for your patch. Some style suggestions.
 Am 20.02.24 um 13:36 schrieb Andrew Geissler: > From: Andrew Geissler
 <geissonator@yahoo.com>
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.14.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcSQ2-0002jI-VN
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Update OBF poll timeout
 to reduce latency
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
Cc: minyard@acm.org, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Andrew Geissler <geissonator@yahoo.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RGVhciBBbmRyZXcsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBTb21lIHN0eWxlIHN1Z2dl
c3Rpb25zLgoKQW0gMjAuMDIuMjQgdW0gMTM6MzYgc2NocmllYiBBbmRyZXcgR2Vpc3NsZXI6Cj4g
RnJvbTogQW5kcmV3IEdlaXNzbGVyIDxnZWlzc29uYXRvckB5YWhvby5jb20+CgooT2ggbm8sIFlh
aG9vLiAoaWdub3JlKSkKCllvdSBjb3VsZCBiZSBtb3JlIHNwZWNpZmljIGluIHRoZSBnaXQgY29t
bWl0IG1lc3NhZ2UgYnkgdXNpbmcgKkRvdWJsZSo6CgogPiBpcG1pOiBrY3M6IERvdWJsZSBPQkYg
cG9sbCB0aW1lb3V0IHRvIHJlZHVjZSBsYXRlbmN5CgogPiBpcG1pOiBrY3M6IERvdWJsZSBPQkYg
cG9sbCB0aW1lb3V0IHRvIDIwMCB1cyB0byByZWR1Y2UgbGF0ZW5jeQoKPiBDb21taXQgZjkwYmMw
Zjk3ZjJiICgiaXBtaToga2NzOiBQb2xsIE9CRiBicmllZmx5IHRvIHJlZHVjZSBPQkUKPiBsYXRl
bmN5IikgaW50cm9kdWNlZCBhbiBvcHRpbWl6YXRpb24gdG8gcG9sbCB3aGVuIHRoZSBob3N0IGhh
cwo+IHJlYWQgdGhlIG91dHB1dCBkYXRhIHJlZ2lzdGVyIChPRFIpLiBUZXN0aW5nIGhhcyBzaG93
biB0aGF0IHRoZSAxMDB1cwo+IHRpbWVvdXQgd2FzIG5vdCBhbHdheXMgZW5vdWdoLiBXaGVuIHdl
IG1pc3MgdGhhdCAxMDB1cyB3aW5kb3csIGl0Cj4gcmVzdWx0cyBpbiAxMHggdGhlIHRpbWUgdG8g
Z2V0IHRoZSBuZXh0IG1lc3NhZ2UgZnJvbSB0aGUgQk1DIHRvIHRoZQo+IGhvc3QuIFdoZW4geW91
J3JlIHNlbmRpbmcgMTAwJ3Mgb2YgbWVzc2FnZXMgYmV0d2VlbiB0aGUgQk1DIGFuZCBIb3N0LAoK
SSBkbyBub3QgdW5kZXJzdGFuZCwgaG93IHRoaXMgcG9sbCB0aW1lb3V0IGNhbiByZXN1bHQgaW4g
c3VjaCBhbiAKaW5jcmVhc2UsIGFuZCB3aHkgYSBxdWl0ZSBiaWcgdGltZW91dCBodXJ0cywgYnV0
IEkgZG8gbm90IGtub3cgdGhlIAppbXBsZW1lbnRhdGlvbi4KCj4gdGhpcyByZXN1bHRzIGluIGEg
c2VydmVyIGJvb3QgdGFraW5nIDUwJSBsb25nZXIgZm9yIElCTSBQMTAgbWFjaGluZXMuCj4gCj4g
U3RhcnRlZCB3aXRoIDEwMDAgYW5kIHdvcmtlZCBpdCBkb3duIHVudGlsIHRoZSBpc3N1ZSBzdGFy
dGVkIHRvIHJlb2NjdXIuCj4gMjAwIHdhcyB0aGUgc3dlZXQgc3BvdCBpbiBteSB0ZXN0aW5nLiAx
NTAgc2hvd2VkIHRoZSBpc3N1ZQo+IGludGVybWl0dGVudGx5LgoKSeKAmWQgYWRkIGEgYmxhbmsg
bGluZSBoZXJlLgoKPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgR2Vpc3NsZXIgPGdlaXNzb25hdG9y
QHlhaG9vLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMg
fCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYyBiL2Ry
aXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMKPiBpbmRleCA3MjY0MGRhNTUzODAuLmFm
MWVhZTYxNTNmNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVl
ZC5jCj4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYwo+IEBAIC00MjIs
NyArNDIyLDcgQEAgc3RhdGljIHZvaWQgYXNwZWVkX2tjc19pcnFfbWFza191cGRhdGUoc3RydWN0
IGtjc19ibWNfZGV2aWNlICprY3NfYm1jLCB1OCBtYXNrLAo+ICAgCQkJICogbWlzc2VkIHRoZSBl
dmVudC4KPiAgIAkJCSAqLwo+ICAgCQkJcmMgPSByZWFkX3BvbGxfdGltZW91dF9hdG9taWMoYXNw
ZWVkX2tjc19pbmIsIHN0ciwKPiAtCQkJCQkJICAgICAgIShzdHIgJiBLQ1NfQk1DX1NUUl9PQkYp
LCAxLCAxMDAsIGZhbHNlLAo+ICsJCQkJCQkgICAgICAhKHN0ciAmIEtDU19CTUNfU1RSX09CRiks
IDEsIDIwMCwgZmFsc2UsCj4gICAJCQkJCQkgICAgICAmcHJpdi0+a2NzX2JtYywgcHJpdi0+a2Nz
X2JtYy5pb3JlZy5zdHIpOwo+ICAgCQkJLyogVGltZSBmb3IgdGhlIHNsb3cgcGF0aD8gKi8KPiAg
IAkJCWlmIChyYyA9PSAtRVRJTUVET1VUKQoKCktpbmQgcmVnYXJkcywKClBhdWwKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCg==
