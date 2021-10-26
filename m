Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4C243B9AA
	for <lists+openipmi-developer@lfdr.de>; Tue, 26 Oct 2021 20:33:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mfRGS-0007fC-1L; Tue, 26 Oct 2021 18:33:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1mfRGQ-0007f5-PN
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Oct 2021 18:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wERXcRAQ/I//djLVS+exIHaSTMibkMB6iC5nNkVNg9E=; b=ZInnMkVhTHN/REL2frVYnWRY2r
 LDsKDUy1fqKwPhwkCAXhZWJDmIJ+SMmjfqBD3jDrZ5u0L1HcviG/4YbbCiCx3zh6ZM4NHdduhMKOr
 jDe/W34dUhabYkNk6qgfhlnj90N8el5jKCPjkJP1CG97O7lV6BPPqsC5rp7cf+ohCGGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wERXcRAQ/I//djLVS+exIHaSTMibkMB6iC5nNkVNg9E=; b=O1xv22/cBEXpsGiinO5Hj8kpJp
 ezSKPrP5smi2ZlKldApWzLBQ97FfxnfnV2ldtiAcH1zU/QgTluL4CVm8yC5JM7Tx/kD94BhiKGLUn
 xjXREBDmGfrh0kvcsFjetYq6vqxrBX9qPLcD1io6L0tKov+iF+g0onCdPrgShKYtAk3I=;
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfRFw-00HUIV-Jr
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Oct 2021 18:33:34 +0000
Received: by mail-qk1-f171.google.com with SMTP id d15so16078311qkj.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 26 Oct 2021 11:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=wERXcRAQ/I//djLVS+exIHaSTMibkMB6iC5nNkVNg9E=;
 b=Ys6OqEsUFnubgTs3A45NkfIy1d3Osj2cXDYYiwJRPjNovs39ZFHCkKwqRY8LuRbjDW
 B7JFj4j+ggpykOgO5q4JtCApWYjipzJOndmZBjkE7IPkjmji/A1QchKW/jWeQrxfaShf
 TzWsCh8DNBx+GzQ0m2rwU66vz0bAIknVsygPxNH76F/LOm96kJ5vmYUBWgpwbgyaV6Ue
 oe8wcnJZiUOktP5yjuFxp8QGc972QlM711cvKTm8eS3axB/4r4b3e9gKBqME6SpDEluP
 IB/nptRnUFOG9sxZB5L3kEI2y/zHku0GOM/5ihe/W0pwgMMWMOVN+2jf17KxapxVte6T
 ScUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=wERXcRAQ/I//djLVS+exIHaSTMibkMB6iC5nNkVNg9E=;
 b=laGDTrVT4VWCwFFINoh/jX+G0C9jBiufXet2ey1BfuPG6Oo6PALdqeClBz+myDsS2E
 g/afJbmStGfE9XlzcaxUoxhqZkE6Mf7xW2y/1r3jZniYr6U3v/QYLEUs8xt2MkVn25RN
 cG/Oc38pt23RDoj6Wm5inor3qdI0egN4dn0GVG1nQJLVyozq6PUZEKi/HDqnaCJhzsy9
 lmoiXaQLcT41X7nbxK5E6qnrkkh9u89F86SDqO2yLx4V/v0ODNCdicQmXURRVLelaV2N
 ejVF7TUJonzmRwvE6SEGZhzEHZvmjBg5jDll6c3HZ/SknQtXMGtBSm54X9yxv7y6xTSg
 X4TQ==
X-Gm-Message-State: AOAM533Wg+btc1brkljwe51X3ThW7jniWvPxWrO82IOrtpIBoinPH/3P
 572iT7c4qNOxJjd0e1TEQ9qKwowsIQ==
X-Google-Smtp-Source: ABdhPJwpl6zcPrsn0PotBJMlEXnjRTbMzCIc7iIUCnGSxC56T/JU6yCg8Fvbtpf0Iv5e9CnjgRsehA==
X-Received: by 2002:a05:622a:83:: with SMTP id
 o3mr26312912qtw.17.1635267011819; 
 Tue, 26 Oct 2021 09:50:11 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id c8sm11288834qtb.29.2021.10.26.09.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 09:50:11 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ad7f:7a7f:3b9a:4eab])
 by serve.minyard.net (Postfix) with ESMTPSA id 4C6B91800B4;
 Tue, 26 Oct 2021 16:50:10 +0000 (UTC)
Date: Tue, 26 Oct 2021 11:50:09 -0500
From: Corey Minyard <minyard@acm.org>
To: Kunkun Li <likunkun@bytedance.com>
Message-ID: <20211026165009.GD2744412@minyard.net>
References: <20211026025834.82766-1-likunkun@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211026025834.82766-1-likunkun@bytedance.com>
X-Headers-End: 1mfRFw-00HUIV-Jr
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif: Add msleep in
 multipart test
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBPY3QgMjYsIDIwMjEgYXQgMTA6NTg6MzRBTSArMDgwMCwgS3Vua3VuIExpIHdyb3Rl
Ogo+IER1cmluZyBtdWx0aXBhcnQgdGVzdCwgY21kKDYsNyw4KSBvciBjbWQoNiw3LDcpIHdpbGwK
PiBiZSBzZW50IGNvbnRpbnVvdXNseS4KClRoaXMgaXMgbm90IHVzZWZ1bCBpbmZvcm1hdGlvbiwg
d2UgZG9uJ3QgaGF2ZSBhY2Nlc3MgdG8geW91ciB0ZXN0cywgc28KdGhpcyBpcyBtZWFuaW5nbGVz
cyB0byB1cy4KCj4gCj4gVGhlIHByZXNzdXJlIHRlc3QgZm91bmQgc29tZSBCTUMgc3lzdGVtcyBj
YW5ub3QgcHJvY2Vzcwo+IG1lc3NhZ2VzIGluIHRpbWUsIHJlc3VsdGluZyBpbiByZWFkX3Jlc3Bv
bnNlIGNvbnRpbnVlcyB0byByZWNlaXZlCj4gZXJyb3IgbWVzc2FnZXMgZnJvbSBpMmMuCj4gUmV0
cnkgbWVjaGFuaXNtIHdpbGwgdGFrZXMgMTBzLCBhbmQgZmluYWxseSBzZXQgbm90IHN1cHBvcnQK
PiBtdWx0aXBhcnQgdHJhbnNtaXQuCj4gCj4gU28sIHRvIHdvcmsgYXJvdW5kIHRoaXPvvIxhZGQg
bXNsZWVwIGFmdGVyIHNlbmRpbmcgY21kIDYgYW5kCj4gY21kIDcgcmVzcGVjdGl2ZWx5LiBUaGUg
cHJvYmxlbSBkaWQgbm90IGFwcGVhciBhZ2FpbiBpbgo+IHByZXNzdXJlIHRlc3QuCgpObywgeW91
IGNhbid0IHNsb3cgZG93biBldmVyeW9uZSBiZWNhdXNlIHlvdSBoYXZlIG9uZSBkb2RneSBCTUMu
ICBZb3UKbmVlZCB0byBkZXRlY3QgdGhhdCB0aGlzIGlzIGEgQk1DIHRoYXQgaGFzIHRoZSBwcm9i
bGVtIGFuZCBvbmx5IGRvIGl0CmZvciB0aG9zZSBCTUNzLgoKLWNvcmV5Cgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEt1bmt1biBMaSA8bGlrdW5rdW5AYnl0ZWRhbmNlLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMg
Yi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+IGluZGV4IDIwZDVhZjkyOTY2ZC4uNjU4
NDE3OThmYWZlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4g
KysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKPiBAQCAtMTQ1Myw2ICsxNDUzLDcg
QEAgc3RhdGljIGludCBzdGFydF9tdWx0aXBhcnRfdGVzdChzdHJ1Y3QgaTJjX2NsaWVudCAqY2xp
ZW50LAo+ICAJcmV0ID0gaTJjX3NtYnVzX3dyaXRlX2Jsb2NrX2RhdGEoY2xpZW50LAo+ICAJCQkJ
CSBTU0lGX0lQTUlfTVVMVElfUEFSVF9SRVFVRVNUX1NUQVJULAo+ICAJCQkJCSAzMiwgbXNnKTsK
PiArCW1zbGVlcChTU0lGX01TR19NU0VDKTsKPiAgCWlmIChyZXQpIHsKPiAgCQlyZXRyeV9jbnQt
LTsKPiAgCQlpZiAocmV0cnlfY250ID4gMCkKPiBAQCAtMTQ2Nyw2ICsxNDY4LDcgQEAgc3RhdGlj
IGludCBzdGFydF9tdWx0aXBhcnRfdGVzdChzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+ICAJ
cmV0ID0gaTJjX3NtYnVzX3dyaXRlX2Jsb2NrX2RhdGEoY2xpZW50LAo+ICAJCQkJCSBTU0lGX0lQ
TUlfTVVMVElfUEFSVF9SRVFVRVNUX01JRERMRSwKPiAgCQkJCQkgMzIsIG1zZyArIDMyKTsKPiAr
CW1zbGVlcChTU0lGX01TR19NU0VDKTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkZXZfZXJyKCZjbGll
bnQtPmRldiwgIkNvdWxkIG5vdCB3cml0ZSBtdWx0aS1wYXJ0IG1pZGRsZSwgdGhvdWdoIHRoZSBC
TUMgc2FpZCBpdCBjb3VsZCBoYW5kbGUgaXQuICBKdXN0IGxpbWl0IHNlbmRzIHRvIG9uZSBwYXJ0
LlxuIik7Cj4gIAkJcmV0dXJuIHJldDsKPiAtLSAKPiAyLjExLjAKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
