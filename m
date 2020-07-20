Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2416225EC7
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Jul 2020 14:47:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxVCb-0000c4-OT; Mon, 20 Jul 2020 12:47:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1jxVCa-0000bf-3M
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 12:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SYhw9y+4Drz4Eth/Pa7un579phrA/34yzvX4L08oZjE=; b=FUUDMngPh/26di47T/FXrZRZvt
 bNx9TfFupBRV33Ppj8UfeOaSo8c8pZkJm1Fuh0wOlsq7paKVzQgNSOsuDN8EkfSfgwglbMaVl7SLJ
 VTLScqme8NPhCAZCEuOt6Dr/p0Bhm6t3tq3XONb6z4O3467GIk+5xkUKFOnMx/9PJcK0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SYhw9y+4Drz4Eth/Pa7un579phrA/34yzvX4L08oZjE=; b=g94hij3FcfBKrfagRWO7HG5fzG
 zveWdb9tfqAdOa4yXDIaaWgE+HT72OSYBNsWcXcjeduw3DEh0S2j5t3oI+PT6N+M1RGuXwBUqtUYC
 8kY9ruK7Ne5g3tStT9iSc0CZgpaqZJhe+eiQbyxGezuAlOq/blTig2bOMxZRjFGeODOQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxVCW-00Dli7-3d
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 12:47:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69A5C2070A;
 Mon, 20 Jul 2020 12:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595249233;
 bh=5nlIs4idUYLiORL6o0nohjjWclRfMD7uXYM/ofVovUM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KQb+ogeUF6SAWUatFdzs3NY4sR3B3/wxBkY5i5v97TNfZwXYQS6IilmZH7XFElQ+3
 z2Zs3lHyCqrICMc4CmADg269R58raYY0BpO29mJs5SiOaVQMXPeNuwrl4laXUsMqSm
 Rqoy3fqg/7exlxbSTN4HDKW6PcdrDC+3nevasX+U=
Date: Mon, 20 Jul 2020 14:47:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <20200720124724.GA4085046@kroah.com>
References: <2084072d-e16c-d47c-6eed-f47e8f149c44@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2084072d-e16c-d47c-6eed-f47e8f149c44@web.de>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxVCW-00Dli7-3d
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Remove duplicate code in
 __ipmi_bmc_register()
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
Cc: Corey Minyard <cminyard@mvista.com>, Corey Minyard <minyard@acm.org>,
 Arnd Bergmann <arnd@arndb.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jing Xiangfeng <jingxiangfeng@huawei.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBKdWwgMjAsIDIwMjAgYXQgMDI6MDc6NTBQTSArMDIwMCwgTWFya3VzIEVsZnJpbmcg
d3JvdGU6Cj4gPiA+IF9faXBtaV9ibWNfcmVnaXN0ZXIoKSBqdW1wcyB0byB0aGUgbGFiZWwgJ291
dF9mcmVlX215X2Rldl9uYW1lJyBpbiBhbgo+ID4gPiBlcnJvciBwYXRoLiBTbyB3ZSBjYW4gcmVt
b3ZlIGR1cGxpY2F0ZSBjb2RlIGluIHRoZSBpZiAocnYpLgo+ID4KPiA+IExvb2tzIGNvcnJlY3Qs
IHF1ZXVlZCBmb3IgbmV4dCByZWxlYXNlLgo+IAo+IDEuIENhbiBhbiBpbXBlcmF0aXZlIHdvcmRp
bmcgYmUgcHJlZmVycmVkIGZvciB0aGUgY2hhbmdlIGRlc2NyaXB0aW9uPwo+IAo+IDIuIFdpbGwg
dGhlIHRhZyDigJxGaXhlc+KAnSBiZWNvbWUgaGVscGZ1bCBmb3IgdGhlIGNvbW1pdCBtZXNzYWdl
Pwo+IAo+IDMuIERpZCB5b3UgYXZvaWQgYSB0eXBvIGluIHRoZSBwYXRjaCBzdWJqZWN0Pwo+IAo+
IFJlZ2FyZHMsCj4gTWFya3VzCgpIaSwKClRoaXMgaXMgdGhlIHNlbWktZnJpZW5kbHkgcGF0Y2gt
Ym90IG9mIEdyZWcgS3JvYWgtSGFydG1hbi4KCk1hcmt1cywgeW91IHNlZW0gdG8gaGF2ZSBzZW50
IGEgbm9uc2Vuc2ljYWwgb3Igb3RoZXJ3aXNlIHBvaW50bGVzcwpyZXZpZXcgY29tbWVudCB0byBh
IHBhdGNoIHN1Ym1pc3Npb24gb24gYSBMaW51eCBrZXJuZWwgZGV2ZWxvcGVyIG1haWxpbmcKbGlz
dC4gIEkgc3Ryb25nbHkgc3VnZ2VzdCB0aGF0IHlvdSBub3QgZG8gdGhpcyBhbnltb3JlLiAgUGxl
YXNlIGRvIG5vdApib3RoZXIgZGV2ZWxvcGVycyB3aG8gYXJlIGFjdGl2ZWx5IHdvcmtpbmcgdG8g
cHJvZHVjZSBwYXRjaGVzIGFuZApmZWF0dXJlcyB3aXRoIGNvbW1lbnRzIHRoYXQsIGluIHRoZSBl
bmQsIGFyZSBhIHdhc3RlIG9mIHRpbWUuCgpQYXRjaCBzdWJtaXR0ZXIsIHBsZWFzZSBpZ25vcmUg
TWFya3VzJ3Mgc3VnZ2VzdGlvbjsgeW91IGRvIG5vdCBuZWVkIHRvCmZvbGxvdyBpdCBhdCBhbGwu
ICBUaGUgcGVyc29uL2JvdC9BSSB0aGF0IHNlbnQgaXQgaXMgYmVpbmcgaWdub3JlZCBieQphbG1v
c3QgYWxsIExpbnV4IGtlcm5lbCBtYWludGFpbmVycyBmb3IgaGF2aW5nIGEgcGVyc2lzdGVudCBw
YXR0ZXJuIG9mCmJlaGF2aW9yIG9mIHByb2R1Y2luZyBkaXN0cmFjdGluZyBhbmQgcG9pbnRsZXNz
IGNvbW1lbnRhcnksIGFuZAppbmFiaWxpdHkgdG8gYWRhcHQgdG8gZmVlZGJhY2suICBQbGVhc2Ug
ZmVlbCBmcmVlIHRvIGFsc28gaWdub3JlIGVtYWlscwpmcm9tIHRoZW0uCgp0aGFua3MsCgpncmVn
IGstaCdzIHBhdGNoIGVtYWlsIGJvdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWkt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
