Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC6A43BBE6
	for <lists+openipmi-developer@lfdr.de>; Tue, 26 Oct 2021 22:56:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mfTUD-0006bv-J8; Tue, 26 Oct 2021 20:55:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mfTUC-0006bp-PY
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Oct 2021 20:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=voIqEXStO2bmGabwFowsT3t9DeTHiN7x8iO2F0Skzmw=; b=UBtD8r+lz1FvFcjWFnDiFTUVoy
 aF6qDvo2UerWqwhMSQtI4l4N6bIwBzOh0Viw6OqJTyCahW88X04DqcmrcvN7BFSRnUB3n4ed2ABZo
 jlVifQ8akDDVRxTchXRZqIqwYmXOe3aDicMjOAGbkVC5dPN5jV8h/kuGhsaZQ1SnERt8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=voIqEXStO2bmGabwFowsT3t9DeTHiN7x8iO2F0Skzmw=; b=ZBd2A/jws8hbwxKx8hfBn+WKwF
 qmhXbBBcrXfvtMa/jdaWjqdhXi1crvwmuGAMsslKHa2XqebKv2W8SZNaQsSCXJQuNJ063aKimlw3p
 9EmvcZ6CupAFcdR5PV7QR7r23sNgUZf5LFx/NgoS0KHK520m9FDyCDFeOYLAOaJDrnu0=;
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfTTi-0003iH-NP
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Oct 2021 20:55:56 +0000
Received: by mail-qk1-f173.google.com with SMTP id bp7so372030qkb.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 26 Oct 2021 13:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=voIqEXStO2bmGabwFowsT3t9DeTHiN7x8iO2F0Skzmw=;
 b=g9ubPdUDessLkR2PqedKr0pQ4aUQgAtx5gvLK8WOaxAAt3BQQw1PKZulTbmK5V/+/e
 fzk1NlrhQ/URYFzgoz99AOYHOMuj4YtEFT+MIe7ypVaarEafXgGJFNkkE0czBug+8wSc
 9o5w1C6CVS0hWkqYcmxSrL+scz0NsmfOwkjJ2h+uaMLv4Qq0gVdmdiNWQuJv3QZ3bkL+
 0fCHEBtlLtg1ppZ5V+lVzGpllJ93tsKCG8s48fS9rMY/LUsWw6CZ/hy1OldlMStjthnP
 oVS4e2v0BZSubq3Hg1Dvsf/2fr7RZF1rZ14KGlW8oT1OGA2GOO81D9M9jFVZPfTkmlOy
 3X5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=voIqEXStO2bmGabwFowsT3t9DeTHiN7x8iO2F0Skzmw=;
 b=qQ5aPoP/n7kPiuFZar+Xs1v1uWPWip75B4xpekXYI3m0DtyzkUvSBBxKKFavBQht0u
 3dtguzOB2ITokS1KfEcaTdhiiD/xpDtGuCcCF4N7ElP4imrEWPdHP0Xij3oLFlYOxiZ6
 N33bF9yIBqBvKWRCU6epqdL1Lzyf1IRJ/9dtWifvxFWUTEt8lkdiMqgzR7B2ifgkzIAT
 1UvF7xOjqYEzKllf2DAR0/nHuH51qb6O2iM2d+KNKctkq+gTQAJSyYCy04fNIWOrg80J
 aQtBJw+E9wOsLW+LuojLrB4poxAhBmLbZWCq26+NtxqE4U6ATMGl1BxzicJn6AO4l4NT
 8cIw==
X-Gm-Message-State: AOAM533gT7cFkEJPHUCKIhe08wlz5+0H6mW7HcimVzs99oOYWS5Gam2l
 YUcdnD/UWjzn1C/COFEKvp+mLIZDTg==
X-Google-Smtp-Source: ABdhPJwt+cQAJk64r9oApemgKBsrqBauo21AwRAPt5vOO60lnmzjcyhXcb91oh8JY+E2PIBzinyI2Q==
X-Received: by 2002:a37:a050:: with SMTP id j77mr21608934qke.337.1635281283839; 
 Tue, 26 Oct 2021 13:48:03 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id o14sm12565768qtv.91.2021.10.26.13.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 13:48:03 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ece2:c5c7:8266:ec0b])
 by serve.minyard.net (Postfix) with ESMTPSA id EE5191800B9;
 Tue, 26 Oct 2021 20:48:01 +0000 (UTC)
Date: Tue, 26 Oct 2021 15:48:00 -0500
From: Corey Minyard <minyard@acm.org>
To: Kunkun Li <likunkun@bytedance.com>
Message-ID: <20211026204800.GE2744412@minyard.net>
References: <20211026025834.82766-1-likunkun@bytedance.com>
 <20211026165009.GD2744412@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211026165009.GD2744412@minyard.net>
X-Headers-End: 1mfTTi-0003iH-NP
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

T24gVHVlLCBPY3QgMjYsIDIwMjEgYXQgMTE6NTA6MDlBTSAtMDUwMCwgQ29yZXkgTWlueWFyZCB3
cm90ZToKPiBPbiBUdWUsIE9jdCAyNiwgMjAyMSBhdCAxMDo1ODozNEFNICswODAwLCBLdW5rdW4g
TGkgd3JvdGU6Cj4gPiBEdXJpbmcgbXVsdGlwYXJ0IHRlc3QsIGNtZCg2LDcsOCkgb3IgY21kKDYs
Nyw3KSB3aWxsCj4gPiBiZSBzZW50IGNvbnRpbnVvdXNseS4KPiAKPiBUaGlzIGlzIG5vdCB1c2Vm
dWwgaW5mb3JtYXRpb24sIHdlIGRvbid0IGhhdmUgYWNjZXNzIHRvIHlvdXIgdGVzdHMsIHNvCj4g
dGhpcyBpcyBtZWFuaW5nbGVzcyB0byB1cy4KCkkgcmVhbGl6ZWQgd2hhdCB5b3UgbWVhbnQgYWJv
dmUuICBUaGUgIm11bHRpcGFydCB0ZXN0IiBpcyB3aGF0IHRoZSBzc2lmCmRyaXZlciBkb2VzIHRv
IGRldGVjdCBtdWx0aXBhcnQgbWVzc2FnZSBzdXBwb3J0LgoKTXkgc3VnZ2VzdGlvbiB3b3VsZCBi
ZSB0byB1c2UgdGhlIHJlc3VsdHMgb2YgZ2V0IGRldmljZSBpZCAobWFudWZhY3R1cmVyCmFuZCBw
cm9kdWN0IGlkKSBhbmQgY29tcGFyZSBpdCBhZ2FpbnN0IGEgbGlzdCBvZiBvZiBCTUNzIHRoYXQg
YmVoYXZlCmJhZGx5IHdoZW4gdGhlIG11bHRpcGFydCB0ZXN0IGlzIGRvbmUgYWdhaW5zdCB0aGVt
LiAgVGhlbiBqdXN0IHNraXAgdGhhdAp0ZXN0IGZvciB0aG9zZSBCTUNzLgoKSSBrbm93IHRoYXQg
YWRkaW5nIDQwbXMgdG8gdGhlIGRldGVjdGlvbiBkb2Vzbid0IHNlZW0gbGlrZSBtdWNoLCBidXQK
ZXZlcnkgbGl0dGxlIGJpdCBtYXR0ZXJzIGhlcmUuICBJdCBkb2Vzbid0IHRha2UgYSBsb3Qgb2Yg
dGhvc2UgdG8gcmVhbGx5CmFkZCB1cC4KCi1jb3JleQoKPiAKPiA+IAo+ID4gVGhlIHByZXNzdXJl
IHRlc3QgZm91bmQgc29tZSBCTUMgc3lzdGVtcyBjYW5ub3QgcHJvY2Vzcwo+ID4gbWVzc2FnZXMg
aW4gdGltZSwgcmVzdWx0aW5nIGluIHJlYWRfcmVzcG9uc2UgY29udGludWVzIHRvIHJlY2VpdmUK
PiA+IGVycm9yIG1lc3NhZ2VzIGZyb20gaTJjLgo+ID4gUmV0cnkgbWVjaGFuaXNtIHdpbGwgdGFr
ZXMgMTBzLCBhbmQgZmluYWxseSBzZXQgbm90IHN1cHBvcnQKPiA+IG11bHRpcGFydCB0cmFuc21p
dC4KPiA+IAo+ID4gU28sIHRvIHdvcmsgYXJvdW5kIHRoaXPvvIxhZGQgbXNsZWVwIGFmdGVyIHNl
bmRpbmcgY21kIDYgYW5kCj4gPiBjbWQgNyByZXNwZWN0aXZlbHkuIFRoZSBwcm9ibGVtIGRpZCBu
b3QgYXBwZWFyIGFnYWluIGluCj4gPiBwcmVzc3VyZSB0ZXN0Lgo+IAo+IE5vLCB5b3UgY2FuJ3Qg
c2xvdyBkb3duIGV2ZXJ5b25lIGJlY2F1c2UgeW91IGhhdmUgb25lIGRvZGd5IEJNQy4gIFlvdQo+
IG5lZWQgdG8gZGV0ZWN0IHRoYXQgdGhpcyBpcyBhIEJNQyB0aGF0IGhhcyB0aGUgcHJvYmxlbSBh
bmQgb25seSBkbyBpdAo+IGZvciB0aG9zZSBCTUNzLgo+IAo+IC1jb3JleQo+IAo+ID4gCj4gPiBT
aWduZWQtb2ZmLWJ5OiBLdW5rdW4gTGkgPGxpa3Vua3VuQGJ5dGVkYW5jZS5jb20+Cj4gPiAtLS0K
PiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyB8IDIgKysKPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIv
aXBtaS9pcG1pX3NzaWYuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4gPiBpbmRl
eCAyMGQ1YWY5Mjk2NmQuLjY1ODQxNzk4ZmFmZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc3NpZi5jCj4gPiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYu
Ywo+ID4gQEAgLTE0NTMsNiArMTQ1Myw3IEBAIHN0YXRpYyBpbnQgc3RhcnRfbXVsdGlwYXJ0X3Rl
c3Qoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKPiA+ICAJcmV0ID0gaTJjX3NtYnVzX3dyaXRl
X2Jsb2NrX2RhdGEoY2xpZW50LAo+ID4gIAkJCQkJIFNTSUZfSVBNSV9NVUxUSV9QQVJUX1JFUVVF
U1RfU1RBUlQsCj4gPiAgCQkJCQkgMzIsIG1zZyk7Cj4gPiArCW1zbGVlcChTU0lGX01TR19NU0VD
KTsKPiA+ICAJaWYgKHJldCkgewo+ID4gIAkJcmV0cnlfY250LS07Cj4gPiAgCQlpZiAocmV0cnlf
Y250ID4gMCkKPiA+IEBAIC0xNDY3LDYgKzE0NjgsNyBAQCBzdGF0aWMgaW50IHN0YXJ0X211bHRp
cGFydF90ZXN0KHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCj4gPiAgCXJldCA9IGkyY19zbWJ1
c193cml0ZV9ibG9ja19kYXRhKGNsaWVudCwKPiA+ICAJCQkJCSBTU0lGX0lQTUlfTVVMVElfUEFS
VF9SRVFVRVNUX01JRERMRSwKPiA+ICAJCQkJCSAzMiwgbXNnICsgMzIpOwo+ID4gKwltc2xlZXAo
U1NJRl9NU0dfTVNFQyk7Cj4gPiAgCWlmIChyZXQpIHsKPiA+ICAJCWRldl9lcnIoJmNsaWVudC0+
ZGV2LCAiQ291bGQgbm90IHdyaXRlIG11bHRpLXBhcnQgbWlkZGxlLCB0aG91Z2ggdGhlIEJNQyBz
YWlkIGl0IGNvdWxkIGhhbmRsZSBpdC4gIEp1c3QgbGltaXQgc2VuZHMgdG8gb25lIHBhcnQuXG4i
KTsKPiA+ICAJCXJldHVybiByZXQ7Cj4gPiAtLSAKPiA+IDIuMTEuMAo+ID4gCj4gCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBPcGVuaXBtaS1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0Cj4gT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldAo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29w
ZW5pcG1pLWRldmVsb3BlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
