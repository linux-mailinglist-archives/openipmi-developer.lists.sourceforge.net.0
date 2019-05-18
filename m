Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9A422377
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 May 2019 14:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hRy9n-0004En-JF; Sat, 18 May 2019 12:09:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangkefeng.wang@huawei.com>) id 1hRtzI-00010n-3H
 for openipmi-developer@lists.sourceforge.net; Sat, 18 May 2019 07:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2uCmvEiVpPFQ68++wU7EkGm13s243eH5x6cK3ceCrz4=; b=ITjN1aI2RT52s+TtPJW/l0wiNZ
 TRvM6nhF+jzXhcDN1io0ApSUIZqb/jMANzd0cOZy/HBEzch1xa/I1mdWYZel0sALwvJYMx5q6+a+W
 7w1yIhqYufxs+I/EdG+/RsQt9DcD9vEjFr27qt1fsVn9nVo2EWtQ0FHt/b/qpYjJKR1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2uCmvEiVpPFQ68++wU7EkGm13s243eH5x6cK3ceCrz4=; b=e9BT08HWOzj8EJlAPhKlxi0Z86
 dDpHV2Xe3kqP+ZD2/KaWVCM/VaLRvRUZ4N6YnVK3HQIWTZx64iAW43O4oFEbBrV0rgbGBjGfmmxgQ
 Jj0J8+ViXAEZ/PUT8BoVMkMR9hBe0iGRAWJE/pO9hotNcUEgiPPL358WuG2Bsx9nbYww=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hRtzG-004qnS-5s
 for openipmi-developer@lists.sourceforge.net; Sat, 18 May 2019 07:42:36 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 34126ADB15A41BF69D89;
 Sat, 18 May 2019 15:42:26 +0800 (CST)
Received: from [127.0.0.1] (10.177.19.180) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Sat, 18 May 2019
 15:42:19 +0800
To: <minyard@acm.org>
References: <20190517101245.4341-1-wangkefeng.wang@huawei.com>
 <20190517161821.GB11017@minyard.net>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <e2bc308b-49d3-7a17-08b7-dce504898969@huawei.com>
Date: Sat, 18 May 2019 15:40:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.1
MIME-Version: 1.0
In-Reply-To: <20190517161821.GB11017@minyard.net>
Content-Language: en-US
X-Originating-IP: [10.177.19.180]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hRtzG-004qnS-5s
X-Mailman-Approved-At: Sat, 18 May 2019 12:09:42 +0000
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: fix unexpected driver
 unregister warning
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Ck9uIDIwMTkvNS8xOCAwOjE4LCBDb3JleSBNaW55YXJkIHdyb3RlOgo+IE9uIEZyaSwgTWF5IDE3
LCAyMDE5IGF0IDA2OjEyOjQ0UE0gKzA4MDAsIEtlZmVuZyBXYW5nIHdyb3RlOgo+PiBJZiBpcG1p
X3NpX3BsYXRmb3JtX2luaXQoKS0+cGxhdGZvcm1fZHJpdmVyX3JlZ2lzdGVyKCkgZmFpbHMsCj4+
IHBsYXRmb3JtX2RyaXZlcl91bnJlZ2lzdGVyKCkgY2FsbGVkIHVuY29uZGl0aW9uYWxseSB3aWxs
IHRyaWdnZXIKPj4gZm9sbG93aW5nIHdhcm5pbmcsCj4+Cj4+IGlwbWlfcGxhdGZvcm06IFVuYWJs
ZSB0byByZWdpc3RlciBkcml2ZXI6IC0xMgo+PiAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0t
LS0tLS0tLS0KPj4gVW5leHBlY3RlZCBkcml2ZXIgdW5yZWdpc3RlciEKPj4gV0FSTklORzogQ1BV
OiAxIFBJRDogNzIxMCBhdCBkcml2ZXJzL2Jhc2UvZHJpdmVyLmM6MTkzIGRyaXZlcl91bnJlZ2lz
dGVyKzB4NjAvMHg3MCBkcml2ZXJzL2Jhc2UvZHJpdmVyLmM6MTkzCj4+Cj4+IEZpeCBpdCBieSBh
ZGRpbmcgcGxhdGZvcm1fcmVnaXN0ZXJlZCB2YXJpYWJsZSwgb25seSB1bnJlZ2lzdGVyIHBsYXRm
b3JtCj4+IGRyaXZlciB3aGVuIGl0IGlzIGFscmVhZHkgc3VjY2Vzc2Z1bGx5IHJlZ2lzdGVyZWQu
Cj4gVGhpcyBpcyBnb29kLCBidXQgaGF2ZSB5b3UgZm91bmQgb3V0IHdoeSB0aGUgZHJpdmVyIHdh
cyB1bmFibGUgdG8KPiByZWdpc3RlciBpbiB0aGUgZmlyc3QgcGxhY2U/ICBUaGF0IHJlYWxseSBz
aG91bGRuJ3QgaGFwcGVuLgoKWWVzLCBpdCBpcyBoYXJkIHRvIGhhcHBlbiBpbsKgIHJlYWwgc2Nl
bmUsIHRoZSB0ZXN0IHJvYm90IGZvdW5kIHRoaXMgaXNzdWUKCndoZW4gRkFVTFRfSU5KRUNUSU9O
IGVuYWJsZWQuCgo+Cj4gVGhpcyBwYXRjaCBpcyBxdWV1ZWQgZm9yIDUuMy4KPgo+IC1jb3JleQo+
Cj4+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4KPj4gU2lnbmVk
LW9mZi1ieTogS2VmZW5nIFdhbmcgPHdhbmdrZWZlbmcud2FuZ0BodWF3ZWkuY29tPgo+PiAtLS0K
Pj4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYyB8IDYgKysrKystCj4+ICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMgYi9kcml2ZXJzL2No
YXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKPj4gaW5kZXggZjJhOTFjNGQ4Y2FiLi4wY2Q4NDk2
NzVkOTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0u
Ywo+PiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKPj4gQEAgLTE5
LDYgKzE5LDcgQEAKPj4gICNpbmNsdWRlICJpcG1pX3NpLmgiCj4+ICAjaW5jbHVkZSAiaXBtaV9k
bWkuaCIKPj4gIAo+PiArc3RhdGljIGJvb2wgcGxhdGZvcm1fcmVnaXN0ZXJlZDsKPj4gIHN0YXRp
YyBib29sIHNpX3RyeXBsYXRmb3JtID0gdHJ1ZTsKPj4gICNpZmRlZiBDT05GSUdfQUNQSQo+PiAg
c3RhdGljIGJvb2wgICAgICAgICAgc2lfdHJ5YWNwaSA9IHRydWU7Cj4+IEBAIC00NjksOSArNDcw
LDEyIEBAIHZvaWQgaXBtaV9zaV9wbGF0Zm9ybV9pbml0KHZvaWQpCj4+ICAJaW50IHJ2ID0gcGxh
dGZvcm1fZHJpdmVyX3JlZ2lzdGVyKCZpcG1pX3BsYXRmb3JtX2RyaXZlcik7Cj4+ICAJaWYgKHJ2
KQo+PiAgCQlwcl9lcnIoIlVuYWJsZSB0byByZWdpc3RlciBkcml2ZXI6ICVkXG4iLCBydik7Cj4+
ICsJZWxzZQo+PiArCQlwbGF0Zm9ybV9yZWdpc3RlcmVkID0gdHJ1ZTsKPj4gIH0KPj4gIAo+PiAg
dm9pZCBpcG1pX3NpX3BsYXRmb3JtX3NodXRkb3duKHZvaWQpCj4+ICB7Cj4+IC0JcGxhdGZvcm1f
ZHJpdmVyX3VucmVnaXN0ZXIoJmlwbWlfcGxhdGZvcm1fZHJpdmVyKTsKPj4gKwlpZiAocGxhdGZv
cm1fcmVnaXN0ZXJlZCkKPj4gKwkJcGxhdGZvcm1fZHJpdmVyX3VucmVnaXN0ZXIoJmlwbWlfcGxh
dGZvcm1fZHJpdmVyKTsKPj4gIH0KPj4gLS0gCj4+IDIuMjAuMQo+Pgo+IC4KPgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCg==
