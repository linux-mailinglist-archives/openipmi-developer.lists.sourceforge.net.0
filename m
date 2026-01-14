Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA874D1C18A
	for <lists+openipmi-developer@lfdr.de>; Wed, 14 Jan 2026 03:10:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBCLDyHI+w/ocIa7gKpUtyaBhmd9JbWjrpIJPTZvkFI=; b=luXLJ7/RuVTEnm26gMjDDG+Vx4
	X1GEyIsgVlwNkmJtW1NzVUV1YCf9z3cJMHI1kExs5ueqnWvk9uGTMAnzRP/YkhZKRiMcHRylqrTlM
	0NoMzQayig/zhQrcZwO3iJPZ9HNyudHsnXV5VArXCaGiBxje3VBtgvQ8BnGomAWk360A=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vfqLQ-0005vm-HI;
	Wed, 14 Jan 2026 02:10:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@codeconstruct.com.au>) id 1vfqLP-0005vf-66
 for openipmi-developer@lists.sourceforge.net;
 Wed, 14 Jan 2026 02:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=legPp6d0kYzVtugSXW2QUU3YaU5bsxQJ/YOrcISjRHw=; b=MK3s/7G2xV5o6oZ7URHaQfuPb+
 LaQ3DhbB6RzkqCECQFgn3AecH6Z81jdhE5wzvkKgh5d3dm1Zvs5ZMWcAfCbEwKSssIxkPEXtIo6xn
 JdVOaMcSCdXYddO0S9AmtxdJbS/YL60UYgfWE0MMPRNPIq8Q2dSd5RbVsemzOMem50Ko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=legPp6d0kYzVtugSXW2QUU3YaU5bsxQJ/YOrcISjRHw=; b=BwmR9JDdZsEgyDJK53oO5+WQdt
 cmvaeTT1XkYrg7BEDiyjrNcDLMkTbbtlo8fODpBHuZOdAhGFhNWqZ17dNqDbbfQ+ajJ5T51f+v+An
 Jiw2IbIm367o7HXVaEHwrnRwZ2EkqQIO+vO6O3vCrAm12EE5tDNhowu8QXIgvmf9vxfg=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vfqLO-0005q1-87 for openipmi-developer@lists.sourceforge.net;
 Wed, 14 Jan 2026 02:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1768356634;
 bh=legPp6d0kYzVtugSXW2QUU3YaU5bsxQJ/YOrcISjRHw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=Ha6hc8BeoA/dYMk+iXC8wG2sU2Kcv/BNDLX25BljuDWm1kWboVWq288S978qQnobU
 mZ4fu7Fc2S5ilVL6udLErBKtcVw9IKJ1+Ti4eT/63zG+VQB8cfMXhDDER2TsYIdJ0c
 vaitm6RQmP+ODrUzf6SxsKG249IPgffVWywjva1VC8FSVfP182e+Xd7Xasx1vwif04
 QF0YVhVm6ZWOjiMvQGUstlKwpNDJFNhCnNnffI/vcXr1lwJ6cj52TVeX/M4tMKDn/T
 KAbpFWwquZV/lXCQDBeNb7JMcQRJ4W/SIpw7LQaa03QuzDP7aykPwF1R3hD1zxeeZd
 /iUl6B/dgKgeg==
Received: from [192.168.14.220] (unknown [144.6.157.237])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 9D2CA64705;
 Wed, 14 Jan 2026 10:10:34 +0800 (AWST)
Message-ID: <a4cf18d7842c27ea2b570962775d982c0dbc54f0.camel@codeconstruct.com.au>
From: Matt Johnston <matt@codeconstruct.com.au>
To: corey@minyard.net
Date: Wed, 14 Jan 2026 10:10:34 +0800
In-Reply-To: <aWZsAt8unYL6khJj@mail.minyard.net>
References: <20260113-ipmb-read-init-v1-1-a9cbce7b94e3@codeconstruct.com.au>
 <aWZsAt8unYL6khJj@mail.minyard.net>
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Tue, 2026-01-13 at 10:00 -0600, Corey Minyard
 wrote: > On Tue, Jan 13, 2026 at 05:41:34PM +0800, Matt Johnston wrote: >
 > IPMB doesn't use i2c reads, but the handler needs to set a value. > > Other
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vfqLO-0005q1-87
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: initialise event
 handler read bytes
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
Cc: openipmi-developer@lists.sourceforge.net,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQ29yZXksCgpPbiBUdWUsIDIwMjYtMDEtMTMgYXQgMTA6MDAgLTA2MDAsIENvcmV5IE1pbnlh
cmQgd3JvdGU6Cj4gT24gVHVlLCBKYW4gMTMsIDIwMjYgYXQgMDU6NDE6MzRQTSArMDgwMCwgTWF0
dCBKb2huc3RvbiB3cm90ZToKPiA+IElQTUIgZG9lc24ndCB1c2UgaTJjIHJlYWRzLCBidXQgdGhl
IGhhbmRsZXIgbmVlZHMgdG8gc2V0IGEgdmFsdWUuCj4gPiBPdGhlcndpc2UgYW4gaTJjIHJlYWQg
d2lsbCByZXR1cm4gYW4gdW5pbml0aWFsaXNlZCB2YWx1ZSBmcm9tIHRoZSBidXMKPiA+IGRyaXZl
ci4KPiAKPiBUaGlzIGlzIGZpbmUsIEkgc3VwcG9zZS4gIEl0J3MgcHJvYmFibHkgYmV0dGVyIHRv
IGRvIHRoaXMuCj4gCj4gQXJlIHlvdSBhY3R1YWxseSB1c2luZyB0aGlzIGNvZGU/ICBIb3cgd2Fz
IGl0IGZvdW5kPwoKSSdtIG5vdCB1c2luZyBJUE1CLCBzbyBoYXZlbid0IHRlc3RlZCB0aGUgcGF0
Y2ggb24gaGFyZHdhcmUuCldlIHJlY2VpdmVkIGEgcGF0Y2ggZm9yIG1jdHAtaTJjIHJlYWQgaGFu
ZGxpbmcsIHRoYXQgbWFkZSBtZSBub3RpY2XCoAp0aGUgdW5pbml0aWFsaXNlZCB2YWx1ZSBwcm9i
bGVtIHRoZXJlLiBJIGhhZCBhIGxvb2sgb3ZlciBvdGhlcsKgCmkyY19zbGF2ZV9yZWdpc3Rlcigp
wqBrZXJuZWwgdXNlcnMgdG8gc2VlIGlmIHRoZSBwcm9ibGVtIHdhcyBjb21tb24KKG1jdHAtaTJj
IHVzZWQgaXBtaS1pcG1iIGFzIGEgYml0IG9mIGEgcmVmZXJlbmNlIGR1cmluZyBkZXZlbG9wbWVu
dCB0b28pLgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjYwMTA4MTAxODI5LjEx
NDA0NDgtMS0KemhhbmdqaWFuLjMwMzJAYnl0ZWRhbmNlLmNvbS8KaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbmV0ZGV2LzIwMjYwMTEzLW1jdHAtcmVhZC1maXgtdjEtMS0KNzBjNGI1OWM3NDFjQGNv
ZGVjb25zdHJ1Y3QuY29tLmF1LwoKQ2hlZXJzLApNYXR0CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
