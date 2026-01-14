Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 005E3D1FB04
	for <lists+openipmi-developer@lfdr.de>; Wed, 14 Jan 2026 16:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yDpNL/Fcwe/OnjbE7xUcdXkxpkBdS3KArm3ueVCnUT0=; b=dc7Uax0F7N4CJpX3HjQVdUF4cf
	JihsIdScGDoSs63YPCvtqEib8S+0TUmifYjJQpEMyZolV7ysDMsqAomx6ZBvsXbSCS6oZYz3uUjro
	uFeJhQf2RRRZIcIewBRFtBiQ3mv1HklwAoojWRPPnCN7CvNXIv4XMLEFdsCZR4s1zQcE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vg2eR-0007dQ-Ko;
	Wed, 14 Jan 2026 15:19:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vg2eQ-0007dB-6x
 for openipmi-developer@lists.sourceforge.net;
 Wed, 14 Jan 2026 15:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8n3JaraXJSpEIQ8S4asX30qs6Q4GjiJGDB0h/DGBWts=; b=BOzi59XQYQq5Mcq04F0tJn2gVd
 WIUNm2TmZSrlxY9+eGapEB/4NEz6P9XJ4swFqjv+QbjBUanu5j/447e20g0kTptYx/vvX568XFeOH
 JGBfUafChkUzuXBzgJ1bnKdQLN3pMgQ2eirPVzoA1XSDdx37Y9FcHbBJGRtx3YgTJQ5w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8n3JaraXJSpEIQ8S4asX30qs6Q4GjiJGDB0h/DGBWts=; b=mSjIy0KccTYnlSbABxNXev86wJ
 sfuoZre5P8fe+CJkngdyQBBsheRjkktTLcIRn1rdrUgqHVE9jJe02YSF0StoajHy31agNOdk0ZO43
 hWWlbQ1rv+QQkEorbwcSbCzkhQtEP/+ulgloySdfyxlsd13IShBWYz+07+Yt71l2+Gk4=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vg2eQ-0003hX-Ga for openipmi-developer@lists.sourceforge.net;
 Wed, 14 Jan 2026 15:19:14 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-3e7f68df436so812304fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 14 Jan 2026 07:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1768403944; x=1769008744; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8n3JaraXJSpEIQ8S4asX30qs6Q4GjiJGDB0h/DGBWts=;
 b=eAMot5D/geypiQYH9hgER5oLS74hIX92latXWAProSvNszE54YeO4pmYsp8DAzsHU/
 RUL86DEIo0x3wHFE1qCp/jJ9ow5M8zBTVgKNGI52eJkVCcBnannIipTLBuwyAVfdZubs
 zoM44u5QzpyozyeVcjkLSsbB6XqqVKnmspNB5J9PREzyr5kPwahxhXcergGfYqvQ11Ax
 rzAJHtRlwPFjZmR72Ua61TPAI05yOJ/M1rIx1CXBkrvRYNdUoN/nqWm+MpsAl5MrpiRB
 Udz+gBcRjneJXw9+HcUik89ZErcO4r8yW0dhywEgcKTpNElOvGUTv1kFUq254bdEe9aA
 s0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768403944; x=1769008744;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8n3JaraXJSpEIQ8S4asX30qs6Q4GjiJGDB0h/DGBWts=;
 b=CBfI0sZ/jonNYASwxdyU/vZFMaHn3Jjy6PBnjI3aGLd88kOOM+UDdO9udWlw1JSNxU
 94N8V4eHGOhNUa6ZRpfim/B2FDUl6WMchSqxx3QWF5SPebRBcj9iKBFyS3OPWuiYHQRN
 Je7XnWCMFboMdAVfv6pspMrbZXHW79NJ0xT+p5eeDhH1Cy/baU712FwZOBGUGwkOOtPK
 7x9/fnyOpZecwsDt3trJ9rUp0rekdzGqVGY1v/iz/pA+0I8NkyvkiMWlM+pwdSANxghu
 9qQ++o3N7FmmArbEXd6G1d8JvrqmzX1Neqw1VHV4xRoS9GOm/s+lX4EqoEXh/ml1rCkI
 adOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcTNP2FmbpU6Tt/b3Od5IkpKUANcWCUg4LOCan7prgflFN3ZpgHenMfaE5cYaPKpusbrN7bw0Owv1JsL8hSOARBQI=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxm88/cN6P+q0mA+eyGevzfUAmQMUPy3TYgGJu//tsdL7NaLdQJ
 U1KWKTfg6vQ2bCwMyIk7MIoSvnUvhy6jOlKFsNT/z7QXeCel2zH7s4LqCyanhg4AVkM=
X-Gm-Gg: AY/fxX6d9bNrna+ULfy4s04BXH3qnF+LSs9iYV0LHVqr4p62TuKCyNLVcVO1UIkj2PS
 vrVzi8NjpPTzqhIZttxvPO36en5M8nBbDgTi99xvFjLsrdEgJq0k0zTPNFPO8CMgqyF5l+i4REx
 LlPwNPPccny7IRtMcEZfHTTDFBIP8AkwZa4Z3MwY94w0r4I2BbTqFBbQUD9//fNUBruqAY3OoLg
 3QBch0iNMKt0Abu9SM+tkeUmFFFPrX6RbHqrOMGBqEMRJ3pw2r/1YzuQAulB6tHLCO4Ec4mg19t
 b9sezrxwamBYBg5eBCyit/4Xklu7PZs5Y1yyQtMbMc2SjAOgDGPLb7g5mbwbHAV4iOpNujQtViQ
 TmfelUei7qvzYXBKK1d3NhGUOeTsPp32231xkYg9CbFSZUvo+xFh3IUjn1PuQFpp1bYEQErHnIk
 uPDLA9hG1iVYmxMQ==
X-Received: by 2002:a05:6870:cb83:b0:3e0:bd2c:f459 with SMTP id
 586e51a60fabf-404065c5a40mr2483722fac.12.1768403943483; 
 Wed, 14 Jan 2026 07:19:03 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:7796:5e91:58f0:8985])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3ffbe3a6d8esm15084773fac.15.2026.01.14.07.19.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jan 2026 07:19:02 -0800 (PST)
Date: Wed, 14 Jan 2026 09:18:57 -0600
From: Corey Minyard <corey@minyard.net>
To: Matt Johnston <matt@codeconstruct.com.au>
Message-ID: <aWez4WDgQ_Lp_bVq@mail.minyard.net>
References: <20260113-ipmb-read-init-v1-1-a9cbce7b94e3@codeconstruct.com.au>
 <aWZsAt8unYL6khJj@mail.minyard.net>
 <a4cf18d7842c27ea2b570962775d982c0dbc54f0.camel@codeconstruct.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4cf18d7842c27ea2b570962775d982c0dbc54f0.camel@codeconstruct.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 14, 2026 at 10:10:34AM +0800,
 Matt Johnston wrote:
 > Hi Corey, > > On Tue, 2026-01-13 at 10:00 -0600, Corey Minyard wrote: >
 > On Tue, Jan 13, 2026 at 05:41:34PM +0800, Matt Johnston wrote [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vg2eQ-0003hX-Ga
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMTA6MTA6MzRBTSArMDgwMCwgTWF0dCBKb2huc3RvbiB3
cm90ZToKPiBIaSBDb3JleSwKPiAKPiBPbiBUdWUsIDIwMjYtMDEtMTMgYXQgMTA6MDAgLTA2MDAs
IENvcmV5IE1pbnlhcmQgd3JvdGU6Cj4gPiBPbiBUdWUsIEphbiAxMywgMjAyNiBhdCAwNTo0MToz
NFBNICswODAwLCBNYXR0IEpvaG5zdG9uIHdyb3RlOgo+ID4gPiBJUE1CIGRvZXNuJ3QgdXNlIGky
YyByZWFkcywgYnV0IHRoZSBoYW5kbGVyIG5lZWRzIHRvIHNldCBhIHZhbHVlLgo+ID4gPiBPdGhl
cndpc2UgYW4gaTJjIHJlYWQgd2lsbCByZXR1cm4gYW4gdW5pbml0aWFsaXNlZCB2YWx1ZSBmcm9t
IHRoZSBidXMKPiA+ID4gZHJpdmVyLgo+ID4gCj4gPiBUaGlzIGlzIGZpbmUsIEkgc3VwcG9zZS4g
IEl0J3MgcHJvYmFibHkgYmV0dGVyIHRvIGRvIHRoaXMuCj4gPiAKPiA+IEFyZSB5b3UgYWN0dWFs
bHkgdXNpbmcgdGhpcyBjb2RlPyAgSG93IHdhcyBpdCBmb3VuZD8KPiAKPiBJJ20gbm90IHVzaW5n
IElQTUIsIHNvIGhhdmVuJ3QgdGVzdGVkIHRoZSBwYXRjaCBvbiBoYXJkd2FyZS4KPiBXZSByZWNl
aXZlZCBhIHBhdGNoIGZvciBtY3RwLWkyYyByZWFkIGhhbmRsaW5nLCB0aGF0IG1hZGUgbWUgbm90
aWNlwqAKPiB0aGUgdW5pbml0aWFsaXNlZCB2YWx1ZSBwcm9ibGVtIHRoZXJlLiBJIGhhZCBhIGxv
b2sgb3ZlciBvdGhlcsKgCj4gaTJjX3NsYXZlX3JlZ2lzdGVyKCnCoGtlcm5lbCB1c2VycyB0byBz
ZWUgaWYgdGhlIHByb2JsZW0gd2FzIGNvbW1vbgo+IChtY3RwLWkyYyB1c2VkIGlwbWktaXBtYiBh
cyBhIGJpdCBvZiBhIHJlZmVyZW5jZSBkdXJpbmcgZGV2ZWxvcG1lbnQgdG9vKS4KCk9rLCB0aGFu
a3MgZm9yIHRoZSBoaXN0b3J5IG9uIHRoaXMuICBJdCdzIGluIG15IHRyZWUuCgotY29yZXkKCj4g
Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjYwMTA4MTAxODI5LjExNDA0NDgt
MS0KPiB6aGFuZ2ppYW4uMzAzMkBieXRlZGFuY2UuY29tLwo+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL25ldGRldi8yMDI2MDExMy1tY3RwLXJlYWQtZml4LXYxLTEtCj4gNzBjNGI1OWM3NDFjQGNv
ZGVjb25zdHJ1Y3QuY29tLmF1Lwo+IAo+IENoZWVycywKPiBNYXR0Cj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Bl
cgo=
