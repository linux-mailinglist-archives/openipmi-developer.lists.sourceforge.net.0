Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 699D47B5604
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 17:09:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnKXf-0006Vo-90;
	Mon, 02 Oct 2023 15:09:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qnKXW-0006VJ-4N
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 15:08:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ggLhMJQ+B4dvCwYE/+Ugtmk5cPZVOqC1Qp+yEqQc2g=; b=DoWqArJ8SLTJl1ZroEow2xnfYj
 5xUmEzkufvqx8n3qIochCQVaks1xQEdoASOiDw5D8kO5S10ulg97aXZJh//LxlaueoA4uEHUflpI4
 Se7428j7Lx7KU5GiKB0LEu99DhqUfBCOY8LSb59A+Icc33yQ0LBz1Q1wrQTAbGsBNgF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2ggLhMJQ+B4dvCwYE/+Ugtmk5cPZVOqC1Qp+yEqQc2g=; b=ht1cpvAQWBCWQVe/1tU+m9pCNm
 bFPW8qmBt7NPhTOdYwJDCniY4jJlOSL0OBW22JYJGjlTK669CRBUUAmRXoUj6cxV64VwzoPdeUiX+
 ik5sQSzz8Dyrw2skTYxa3FFMCV5BRYgXfMEPlfLorEmMHMndaKb8xnA47/41qB3emfBk=;
Received: from mail-qk1-f175.google.com ([209.85.222.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnKXJ-0003Fe-PO for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 15:08:49 +0000
Received: by mail-qk1-f175.google.com with SMTP id
 af79cd13be357-77574c076e4so484804185a.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 02 Oct 2023 08:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696259313; x=1696864113; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=2ggLhMJQ+B4dvCwYE/+Ugtmk5cPZVOqC1Qp+yEqQc2g=;
 b=bCoZ2pv7LueniVNCXGA0RBV4OqnPfIsVjhZCQvSOrEFiyvxwDuKT9xJ2Mxp+lBndo+
 wXKe5/VTmiDTbEUD5z0Mrg/fswQRRgDRj8WMjajT4TSJLfRWcWIL50tkt/cyPbWV+Jc3
 NMf3lUhPturklPlfWwZfUloTNlORCBxCFWaw1YJpvWgU2vPl+4WAGmacQwqI8EIk9n7K
 U//sGgAqaaP0XsYs/ANKZ4217avtZg7UoH7VG7F2RklW9cOc7CUoTMOos4GTV3lHcxdN
 +/y8I1Gy5l0vUnhGXVw1T3X3QJqF0I20EXo5Bj1migsjrZOBpmZEcnfXM7y+LDd/KAaw
 j5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696259313; x=1696864113;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2ggLhMJQ+B4dvCwYE/+Ugtmk5cPZVOqC1Qp+yEqQc2g=;
 b=gXaYyBRegYE9ZaM2+9wXcknaYJFQhLA/a1yUQ1TuwnAVrAonEes4T4WsW3cBMDFc+O
 x9A95Zf9Enq2rWhZdNEmnutj/DwKFThB7fV+MZ1ujvU87iWIrzgKoOcbV0jcGIy0HJeo
 cqpEtfTIQq/NEZ9mtzmv4kE0FKMrfbUdRRPcJciLhwQ/3L6zY3xBSPzgw3uAm0IJ8RbD
 EFClV9DHlJ0xmJBrizjZyw2PdA5uNuUVzqgXh7Zk31DoWnlgEXrvohgIah65WLMFjt61
 3M5SSnqx56kjFdBzoI7tLFQ3+mD38mu9oeKE2Oy04s2LhBSD/ZgBj2Szma8E4Ag1gwdT
 grbQ==
X-Gm-Message-State: AOJu0YwB54vUfkFGWaWDb82MsG4cGpPDnGvfXHFLWXE9/zYgOq+AiLug
 DXdHCKamUVtnbM+Ezf8bLPPWbR3gMA==
X-Google-Smtp-Source: AGHT+IGuR2PoILqoa0h3g9kbn1PormpSzU/K36grwux2g7Rv8SO3SzM8gVsXTLgwtIfEMbZS4yZ1jg==
X-Received: by 2002:ad4:42c2:0:b0:64e:c5da:49e4 with SMTP id
 f2-20020ad442c2000000b0064ec5da49e4mr12095855qvr.60.1696259312748; 
 Mon, 02 Oct 2023 08:08:32 -0700 (PDT)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 j12-20020a0cf30c000000b0065b0a3ae7c7sm6669325qvl.113.2023.10.02.08.08.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 08:08:32 -0700 (PDT)
Received: from mail.minyard.net (unknown [IPv6:2001:470:b8f6:1d::35])
 by serve.minyard.net (Postfix) with ESMTPSA id E0DF61800BF;
 Mon,  2 Oct 2023 15:08:30 +0000 (UTC)
Date: Mon, 2 Oct 2023 10:08:28 -0500
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZRrc7Eet4EKbSro6@mail.minyard.net>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Oct 02, 2023 at 08:05:09AM +0200, Christian Theune
    wrote: ...snip... > > > Can you not get kernel coredumps? > > Unfortunately
    no and I still have absolutely now idea why the watchdog triggers… I have
    currently attached dozens of servers that are part of a mysterious [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.175 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.175 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1qnKXJ-0003Fe-PO
Subject: Re: [Openipmi-developer] SOL via syslog?
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBPY3QgMDIsIDIwMjMgYXQgMDg6MDU6MDlBTSArMDIwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB3cm90ZToKCi4uLnNuaXAuLi4KCj4gPiA+IENhbiB5b3Ugbm90IGdldCBrZXJuZWwgY29yZWR1
bXBzPwo+ID4gVW5mb3J0dW5hdGVseSBubyBhbmQgSSBzdGlsbCBoYXZlIGFic29sdXRlbHkgbm93
IGlkZWEgd2h5IHRoZSB3YXRjaGRvZyB0cmlnZ2Vyc+KApiBJIGhhdmUgY3VycmVudGx5IGF0dGFj
aGVkIGRvemVucyBvZiBzZXJ2ZXJzIHRoYXQgYXJlIHBhcnQgb2YgYSBteXN0ZXJpb3VzIHNlcmll
cyBvZiBjcmFzaGVzIGJ1dCB0aGV5IGRpZG7igJl0IGNyYXNoIGFmdGVyIEkgYXR0YWNoZWQgdGhl
IFNPTCBjb250aW51b3VzbHkuIEp1c3QgbXkga2luZCBvZiBsdWNrIEkgZ3Vlc3Mg4oCmIDspCj4g
PiAKPiA+IEl0IG1pZ2h0IGJlIGEgY2x1ZS4gIENhbiB5b3UgbWFrZSBzdXJlIGZsb3ctY29udHJv
bCBpcyB0dXJuZWQgb2ZmIG9uIHRoZSBTT0wgY29ubmVjdGlvbiBhbmQgY29uc29sZT8gIElmIHlv
dSBoYXZlICJyIiBvbiB0aGUgY29uc29sZT0gY29tbWFuZCAobGlrZSBjb25zb2xlPTExNTIwMG44
MXIpICwgaWYgdGhlIEJNQyBzdG9wcyB0YWtpbmcgY2hhcmFjdGVycyB5b3UgY2FuIGhhbmcgdGhl
IGtlcm5lbC4KPiA+IAo+ID4gWW91IG1pZ2h0IHdhbnQgdG8gbWFrZSBzdXJlIGdldHR5IGhhcyBS
VFMgdHVybmVkIG9mZiwgdG9vLgo+ID4gCj4gPiBUaGUgdHJvdWJsZSBpcywgb2YgY291cnNlLCB0
aGF0IHlvdSBjYW4gbG9zZSBjaGFyYWN0ZXJzIGJlY2F1c2Ugb2YgYSBzbG93IEJNQy4gIEJ1dCBp
dCdzIGdlbmVyYWxseSBhIGJhZCBpZGVhIHRvIHJ1biBhIGNvbnNvbGUgd2l0aCBmbG93IGNvbnRy
b2wgZW5hYmxlZC4KPiAKPiBTb3JyeSwgdGhhdCBtaWdodCBoYXZlIGJlZW4gYSBtaXN1bmRlcnN0
YW5kaW5nOiBJ4oCZbSBub3QgY2F0Y2hpbmcgdGhlIGNyYXNoZXMgY3VycmVudGx5IGJlY2F1c2Ug
YWxsIHRoZSBtYWNoaW5lcyB0aGF0IHVzZWQgdG8gY3Jhc2ggbm93IHNlZW0gdG8gbm90IHdhbnQg
dG8gY3Jhc2ggYW55bW9yZS4gSSBndWVzcyB3ZeKAmXJlIG9uIGEgSGVpc2VuYnVnIGhlcmUuIEdl
dHRpbmcgb3V0cHV0IGZyb20gdGhlIFNPTCB3b3JrcyBhYnNvbHV0ZWx5IGZpbmUsIHNvIEkgZXhw
ZWN0IHRvIHNlZSBhIGtlcm5lbCBjcmFzaCBpbiB0aGUgU09MIG9uY2UgaXQgaGFwcGVucy4KPiAK
PiBJ4oCZbSBzb21ld2hhdCBzdXNwZWN0aW5nIHRoYXQgd2XigJlsbCBmaW5kIGFub3RoZXIgYnVn
IHRoYXQgY2F1c2VzIHRob3NlIHNwZWNpZmljIGNyYXNoZXMgbm90IGFwcGVhciBpbiB0aGUgU0VM
LCB0aG91Z2gg4oCmIAo+IAo+IEFuZCB0aGVuIGFnYWluOiBtYXliZSBpdOKAmXMgbm90IGEgSGVp
c2VuYnVnLCBidXQgbWF5YmUgd2hhdGV2ZXIgY2F1c2VkIHRoZSBjcmFzaGVzIGhhcyBiZWVuIGZp
eGVkIGluIGJldHdlZW4gYW5kIEnigJlsbCBuZXZlciBrbm93IOKApiA7KQo+IAoKSSB1bmRlcnN0
b29kLiAgSSdtIHNheWluZyB0aGF0IG1heWJlIHRoZSBtYWNoaW5lcyBhcmVuJ3QgY3Jhc2hpbmcg
YW55Cm1vcmUgKmJlY2F1c2UqIHlvdSBhcmUgbW9uaXRvcmluZyB0aGVtIHdpdGggU09MLgoKUGVy
aGFwcyBhIGxvdCBvZiBrZXJuZWwgb3V0cHV0IGNvbWVzIG91dCBhbGwgYXQgb25jZSwgaXQgZ2V0
cyBmbG93CmNvbnRyb2xsZWQgYnkgdGhlIEJNQywgdGhlIGtlcm5lbCBoYW5ncyB3YWl0aW5nIGZv
ciBwcmludGsgb3V0cHV0LCBhbmQKdGhlIHdhdGNoZG9nIHRoZW4gZ29lcyBvZmYuICBOZXdlciBr
ZXJuZWxzIGhhdmUgZml4ZXMgdG8gYXZvaWQgdGhpcwpwcm9ibGVtLCBidXQgb2xkZXIgb25lcyBk
b24ndC4KClRoZXJlIHdvdWxkIGJlIG5vIE9TIGNyYXNoLCBubyBTRUwgb3V0cHV0LCBubyBjb3Jl
ZHVtcCwganVzdCBhIHdhdGNoZG9nCnJlYm9vdC4KCklmIHlvdSB0dXJuIG9mZiB0aGUgU09MIG1v
bml0b3JpbmcgYW5kIHRoZSBwcm9ibGVtIGNvbWVzIGJhY2ssIHRoYXQKd291bGQgYmUgYSBwcmV0
dHkgZ29vZCBpbmRpY2F0aW9uIHRoYXQgc29tZXRoaW5nIGxpa2UgdGhhdCBpcyBoYXBwZW5pbmcu
ClVuZm9ydHVuYXRlbHksIGl0J3MgaGFyZCB0byBkZWJ1ZyBiZWNhdXNlIHlvdSBjYW4ndCBnZXQg
aW5mbyBmcm9tIHlvdXIKcHJpbWFyeSBkZWJ1Z2dpbmcgaW50ZXJmYWNlLgoKT2YgY291cnNlLCB0
aGUgYnVnIG1heSBoYXZlIGJlZW4gZml4ZWQgYnkgYSBrZXJuZWwgb3IgYXBwIHVwZ3JhZGUsIHRv
by4KTGlrZSB5b3Ugc2F5IHdpdGggdGhpbmdzIGxpa2UgdGhpcywgeW91IG1heSBuZXZlciBrbm93
IDopLgoKLWNvcmV5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
