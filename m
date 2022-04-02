Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DE34EFE4A
	for <lists+openipmi-developer@lfdr.de>; Sat,  2 Apr 2022 05:53:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1naUh5-00055n-Hy; Sat, 02 Apr 2022 03:53:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <baihaowen@meizu.com>) id 1naUh3-00055h-IA
 for openipmi-developer@lists.sourceforge.net; Sat, 02 Apr 2022 03:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HMk0UPPNv2VUH98HoX6P+qISAVeiRqv9HYnQJNKqaPQ=; b=mrUPLZvGd0WLs9tHA5FuWnh+6U
 F5m4SKlmcK+x5evgioDROxQA8aJNkjwFHzfLItcQw9k9HMKSExrkUiiWXvQavkdQPUAYwlIEZ0w5x
 6Tvlrz2ojgXvyWNuxnViuwX/O6cN2ytyh5rjPN/h2ACpadzZ1vok0sfvQhfoTFCak+Sw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HMk0UPPNv2VUH98HoX6P+qISAVeiRqv9HYnQJNKqaPQ=; b=AZOY38RskttWVkZldSN+bR7W3T
 ubpt1XVEj/MFuGZlmTYpzsLekHMhFHUlWOgcQwiW1TqbeiPxwqZh/s9kujmgg+iwvfD7BqkufWEEo
 K1r0STT6jpzZCih18KKLPCyY168BzfQ+snX2HJseJqiiEWy2590LsLGwwxaEBn1SjmH0=;
Received: from edge05.meizu.com ([157.122.146.251] helo=mail.meizu.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLS1:ECDHE-RSA-AES256-SHA:256)
 (Exim 4.94.2) id 1naUox-0007mj-EM
 for openipmi-developer@lists.sourceforge.net; Sat, 02 Apr 2022 03:53:05 +0000
Received: from IT-EXMB-1-125.meizu.com (172.16.1.125) by mz-mail12.meizu.com
 (172.16.1.108) with Microsoft SMTP Server (TLS) id 14.3.487.0; Sat, 2 Apr
 2022 20:03:16 +0800
Received: from [172.16.137.70] (172.16.137.70) by IT-EXMB-1-125.meizu.com
 (172.16.1.125) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Sat, 2 Apr
 2022 11:52:48 +0800
Message-ID: <94f5e266-4412-cf45-9ac3-bbe78477f0c4@meizu.com>
Date: Sat, 2 Apr 2022 11:52:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: <minyard@acm.org>
References: <1648783665-19237-1-git-send-email-baihaowen@meizu.com>
 <20220401124809.GF29333@minyard.net>
From: baihaowen <baihaowen@meizu.com>
In-Reply-To: <20220401124809.GF29333@minyard.net>
X-Originating-IP: [172.16.137.70]
X-ClientProxiedBy: IT-EXMB-1-123.meizu.com (172.16.1.123) To
 IT-EXMB-1-125.meizu.com (172.16.1.125)
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear Corey Thank you for your kindly reply and suggestion.
    :) 在 4/1/22 8:48 PM, Corey Minyard 写道: > On Fri, Apr 01, 2022 at 11:27:45AM
    +0800, Haowen Bai wrote: >> msg could be null without checking null and return,
    but still dereference >> msg->rsp[2] and [...] 
 
 Content analysis details:   (-0.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
  0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1naUox-0007mj-EM
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif: potential NULL
 dereference in msg_done_handler()
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RGVhciBDb3JleQpUaGFuayB5b3UgZm9yIHlvdXIga2luZGx5IHJlcGx5IGFuZCBzdWdnZXN0aW9u
LiA6KQoK5ZyoIDQvMS8yMiA4OjQ4IFBNLCBDb3JleSBNaW55YXJkIOWGmemBkzoKPiBPbiBGcmks
IEFwciAwMSwgMjAyMiBhdCAxMToyNzo0NUFNICswODAwLCBIYW93ZW4gQmFpIHdyb3RlOgo+PiBt
c2cgY291bGQgYmUgbnVsbCB3aXRob3V0IGNoZWNraW5nIG51bGwgYW5kIHJldHVybiwgYnV0IHN0
aWxsIGRlcmVmZXJlbmNlCj4+IG1zZy0+cnNwWzJdIGFuZCB3aWxsIGxlYWQgdG8gYSBudWxsIHBv
aW50ZXIgdHJpZ2dlci4KPiBBY3R1YWxseToKPgo+ICAgSWYgeW91IGxvb2sgYXQgdGhlIGJpZyBw
aWN0dXJlIChob3cgdGhlIHJlc3Qgb2YgdGhlIGNvZGUgd29ya3MpLCBpdCdzCj4gICBub3QgcG9z
c2libGUgZm9yIG1zZyB0byBiZSBOVUxMIGluIHRoZXNlIGNhc2VzLiAgSG93ZXZlciwgYmVpbmcK
PiAgIGRlZmVuc2l2ZSBoZXJlIGlzIHByb2JhYmx5IGEgZ29vZCBpZGVhLgo+Cj4gICBUaGVyZSBh
cmUgdHdvIG9mIHRoZXNlIGNhc2VzLCB3aHkgZGlkbid0IHlvdSBmaXggYm90aCBvZiB0aGVtPwo+
Cj4gICBUaGlzIHN0aWxsIGRvZXNuJ3QgZml4IHRoZSBwcm9ibGVtLiAgVGhlcmUgaXMgYW4gImVs
c2UgaWYiIGluIGJvdGgKPiAgIGNhc2VzIHRoYXQgYWxzbyB1c2VzIG1zZy4KPgo+IFlvdSBjYW4n
dCBqdXN0IGxvb2sgYXQgdGhlIG91dHB1dCBvZiBzb21lIGNvZGUgYW5hbHlzaXMgdG9vbCBhbmQg
bWFrZSBhCj4gYmxpbmQgZGVjaXNpb24gbGlrZSB0aGlzLiAgWW91IGhhdmUgdG8gbG9vayBhdCB0
aGUgYmlnIHBpY3R1cmUuICBBbmQgeW91Cj4gaGF2ZSB0byBhbmFseXplIHRoZSBjb2RlIGNhcmVm
dWxseS4KPgo+IFRoZSByaWdodCB3YXkgdG8gYmUgZGVmZW5zaXZlIGhlcmUgaXMgdG8gYWRkOgo+
IAlpZiAoIW1zZykgewo+IAkJaXBtaV9zc2lmX3VubG9ja19jb25kKHNzaWZfaW5mbywgZmxhZ3Mp
Owo+IAkJYnJlYWs7Cj4gCX0KPiBpbiBib3RoIGNhc2VzLiAgQW5kIHByb2JhYmx5IGFkZCBhIGxv
Zywgc2luY2UgdGhpcyBtZWFucyBzb21ldGhpbmcgZWxzZQo+IHdlbnQgd3JvbmcuCj4KPiBBbnl3
YXksIEknbGwgYWRkIGEgcGF0Y2ggZm9yIGRlZmVuc2l2ZSBtZWFzdXJlIGFuZCBnaXZlIHlvdSBj
cmVkaXQgZm9yCj4gcG9pbnRpbmcgaXQgb3V0Lgo+Cj4gLWNvcmV5Cj4KPj4gU2lnbmVkLW9mZi1i
eTogSGFvd2VuIEJhaSA8YmFpaGFvd2VuQG1laXp1LmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2No
YXIvaXBtaS9pcG1pX3NzaWYuYyB8IDIgKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkv
aXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+PiBpbmRleCBmMTk5
Y2MxLi45MzgzZGUzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYu
Ywo+PiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+PiBAQCAtODE0LDcgKzgx
NCw3IEBAIHN0YXRpYyB2b2lkIG1zZ19kb25lX2hhbmRsZXIoc3RydWN0IHNzaWZfaW5mbyAqc3Np
Zl9pbmZvLCBpbnQgcmVzdWx0LAo+PiAgCQlicmVhazsKPj4gIAo+PiAgCWNhc2UgU1NJRl9HRVRU
SU5HX0VWRU5UUzoKPj4gLQkJaWYgKChyZXN1bHQgPCAwKSB8fCAobGVuIDwgMykgfHwgKG1zZy0+
cnNwWzJdICE9IDApKSB7Cj4+ICsJCWlmICgocmVzdWx0IDwgMCkgfHwgKGxlbiA8IDMpIHx8ICht
c2cgJiYgKG1zZy0+cnNwWzJdICE9IDApKSkgewo+PiAgCQkJLyogRXJyb3IgZ2V0dGluZyBldmVu
dCwgcHJvYmFibHkgZG9uZS4gKi8KPj4gIAkJCW1zZy0+ZG9uZShtc2cpOwo+PiAgCj4+IC0tIAo+
PiAyLjcuNAo+PgoKLS0gCkhhb3dlbiBCYWkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVu
aXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
