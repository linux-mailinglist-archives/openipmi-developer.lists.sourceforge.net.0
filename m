Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lxLHN+GvT2oRmwIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 16:27:45 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC41573238D
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 16:27:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=Hg0C3IE0;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b="c/656fbX";
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="jZK/1tUc";
	dkim=fail ("body hash did not verify") header.d=xry111.site header.s=default header.b=na3hcZ8d;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uUFOwYTEn3O+BCE7UiA+wQRNsqS+nC2MeA01Tf8EA2E=; b=Hg0C3IE0tBG+PDvqd+ye6dphhB
	1MAoz19gwe2WaXH16o25iwebbo0OtynFmFXOKMSRotzPaF6/fiqivsqiKIqtxmldow2epDhWvf305
	wGHf13KV1ztcZT4B1zbvA/EM7hnydhpqP2NUgUVg1asGhyWm1syPRh4rusrfyuzS7Hek=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whpiq-0000K3-NJ;
	Thu, 09 Jul 2026 14:27:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xry111@xry111.site>) id 1whSPB-0007Ui-5D
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 13:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gvNr/i0jNH/uOH958Tf3Nzf7g2z9m+IQXZLfN53ggCU=; b=c/656fbXS12/6A5toio4rqX84N
 5RsyicoW9dPBg10yotXi+HJ04YuKlEST7RBYtOSb6apXJFeKKrs2GWbTTp65RQiW5TSlZpDptr+fP
 kDLFag83rPgI14gmYlGMThCmtJiR6wbVh89r8NH924+Ikpk8ujcuExA7bwhlLXYyRMuQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gvNr/i0jNH/uOH958Tf3Nzf7g2z9m+IQXZLfN53ggCU=; b=jZK/1tUcIP9TcOtLua6/qaRqPB
 aGu6qwiZqUbCkNYvkPQnrde7CgxWP6Vhz+lxFPqvXPVmDm+CONhO7NG/JFTTX3SUhwBDwedCsrhC4
 3KEC1khAnCZQQ6aZnQwQWapVqpQcVy8eToOb/y740czIiL4thDPpbj0akruuqeCOvs0g=;
Received: from xry111.site ([89.208.246.23])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whSP9-0000Ke-BF for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 13:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xry111.site;
 s=default; t=1783516495;
 bh=gvNr/i0jNH/uOH958Tf3Nzf7g2z9m+IQXZLfN53ggCU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=na3hcZ8dCq0bLPxytHpH0mSACiCBt6WzKKjL5QYoNZvgk3BMlKTaTjMKkIM2t5dXp
 Ca+ZuiX0gK1c7IOgMYxESfShn6u0/gexpatlkf3M5E40C0cpaszUhRbDN5H9JjfurF
 EvvjgZKuf1yaGBsC+HZLNWjzgXUEvuPonxlpD7j4=
Received: from [127.0.0.1]
 (2607-8700-5500-e873-0000-0000-0000-1001.16clouds.com
 [IPv6:2607:8700:5500:e873::1001])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (secp384r1)
 server-digest SHA384) (Client did not present a certificate)
 (Authenticated sender: xry111@xry111.site)
 by xry111.site (Postfix) with ESMTPSA id 2E95765982;
 Wed,  8 Jul 2026 09:14:53 -0400 (EDT)
Message-ID: <5d6ea500e983035a2e5748e1bbf8ed6c26ac6f4b.camel@xry111.site>
To: shankerwangmiao@gmail.com, Binbin Zhou <zhoubinbin@loongson.cn>, Chong
 Qiao	 <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>, Huacai Chen	
 <chenhuacai@kernel.org>, Corey Minyard <corey@minyard.net>, Linus Walleij	
 <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Date: Wed, 08 Jul 2026 21:14:51 +0800
In-Reply-To: <20260708-ls2kbmc-mod-v2-7-2afdd1741766@gmail.com>
References: <20260708-ls2kbmc-mod-v2-0-2afdd1741766@gmail.com>
 <20260708-ls2kbmc-mod-v2-7-2afdd1741766@gmail.com>
User-Agent: Evolution 3.60.2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2026-07-08 at 05:16 +0800, Miao Wang via B4 Relay
 wrote: > From: Miao Wang <shankerwangmiao@gmail.com> > > The reset event of
 BMC is captured through GPIO. However, this driver > bypasses the [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1whSP9-0000Ke-BF
X-Mailman-Approved-At: Thu, 09 Jul 2026 14:27:28 +0000
Subject: Re: [Openipmi-developer] [PATCH RFC v2 7/7] mfd: ls2kbmc: Capture
 the reset event of BMC through GPIO
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
From: Xi Ruoyao via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Xi Ruoyao <xry111@xry111.site>
Cc: mfd@lists.linux.dev, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-gpio@vger.kernel.org,
 Yinbo Zhu <zhuyinbo@loongson.cn>, WANG Xuerui <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.51 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DATE_IN_PAST(1.00)[25];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:shankerwangmiao@gmail.com,m:zhoubinbin@loongson.cn,m:qiaochong@loongson.cn,m:lee@kernel.org,m:chenhuacai@kernel.org,m:corey@minyard.net,m:linusw@kernel.org,m:brgl@kernel.org,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:jiaxun.yang@flygoat.com,m:linux-gpio@vger.kernel.org,m:zhuyinbo@loongson.cn,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FREEMAIL_TO(0.00)[gmail.com,loongson.cn,kernel.org,minyard.net];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,xry111.site:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,xry111.site:s=default];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[xry111@xry111.site];
	TAGGED_RCPT(0.00)[openipmi-developer];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[xry111.site:replyto,xry111.site:mid,xry111.site:email,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC41573238D

T24gV2VkLCAyMDI2LTA3LTA4IGF0IDA1OjE2ICswODAwLCBNaWFvIFdhbmcgdmlhIEI0IFJlbGF5
IHdyb3RlOgo+IEZyb206IE1pYW8gV2FuZyA8c2hhbmtlcndhbmdtaWFvQGdtYWlsLmNvbT4KPiAK
PiBUaGUgcmVzZXQgZXZlbnQgb2YgQk1DIGlzIGNhcHR1cmVkIHRocm91Z2ggR1BJTy4gSG93ZXZl
ciwgdGhpcyBkcml2ZXIKPiBieXBhc3NlcyB0aGUgR1BJTyBmcmFtZXdvcmsgYW5kIGRpcmVjdGx5
IGFjY2Vzc2VzIHRoZSBHUElPIGNvbnRyb2xsZXIKPiB0aHJvdWdoIHRoZSBmaXhlZCBhZGRyZXNz
LiBXaGVuIHRoZSBzYW1lIEdQSU8gY29udHJvbGxlciBpcyBhbHNvCj4gZXhwb3NlZCB0aHJvdWdo
IEFDUEkgYW5kIHByb2JlZCBieSB0aGUgY29ycmVzcG9uZGluZyBHUElPIGRyaXZlciwKPiB0aGVy
ZSB3b3VsZCBiZSBhIGNvbmZsaWN0IGJldHdlZW4gdGhlIHR3byBkcml2ZXJzLgo+IAo+IFRoaXMg
cGF0Y2ggd2lsbCB0cnkgdG8gZmluZCB0aGUgR1BJTyB0aHJvdWdoIGRlY2xhcmVkIEdQSU8gcGlu
IGluIHRoZQo+IF9DUlMgcmVzb3VyY2VzIG9mIHRoZSBBQ1BJIG5vZGUuIElmIG5vIHN1Y2ggZGVs
YXJhdGlvbiBpcyBmb3VuZCwgdGhlCj4gZHJpdmVyIHdpbGwgZmFsbCBiYWNrIHRvIHNlYXJjaCBm
b3IgdGhlIGNvcnJlY3QgR1BJTyBjb250cm9sbGVyIGFuZCBwaW4KPiBhY2NvcmRpbmcgdG8gdGhl
IGZpeGVkIGFkZHJlc3MgYW5kIHBpbiBudW1iZXIuIEEgcG9zc2libGUgRFNEVAo+IGRlY2xhcmF0
aW9uIGZvciB0aGUgR1BJTyBwaW4gbWlnaHQgYmUgYXMgZm9sbG93czoKPiAKPiDCoMKgwqAgRGV2
aWNlIChCTUMwKSB7Cj4gwqDCoMKgwqDCoMKgwqAgTmFtZSAoX0FEUiwgLi4uKSAvLyBNYXRjaCB0
aGUgUENJIGFkZHJlc3Mgb2YgdGhlIEJNQyBkZXZpY2UKPiDCoMKgwqDCoMKgwqDCoCAvLyBcX1NC
LkdQTzEgaXMgdGhlIEFDUEkgcGF0aCBvZiB0aGUgR1BJTyBjb250cm9sbGVyCj4gwqDCoMKgwqDC
oMKgwqAgTmFtZSAoX0NSUywgUmVzb3VyY2VUZW1wbGF0ZSAoKSB7Cj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBHcGlvSW50IChFZGdlLCBBY3RpdmVMb3csIEV4Y2x1c2l2ZSwgUHVsbE5vbmUsIDAs
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiXFxfU0IuR1BPMSIs
IDApIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTQgLy8gMTQgaXMgdGhlIEdQ
SU8gcGluIG51bWJlcgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+IMKgwqDCoCB9CgpJIHRo
aW5rIHRoaXMgaXMgYSBwcm9wb3NhbCB3aXRob3V0IHJlYWwgaW1wbGVtZW50YXRpb24geWV0PyAg
SWYgc28uLi4KCi8qIHNuaXAgKi8KCj4gKwlhZGV2ID0gdG9fYWNwaV9kZXZpY2Vfbm9kZShmd25v
ZGUpOwo+ICsJaWYgKCFhZGV2KQo+ICsJCWdvdG8gb3V0Owo+ICsKPiArCUlOSVRfTElTVF9IRUFE
KCZyZXNvdXJjZV9saXN0KTsKPiArCj4gKwlyZXQgPSBhY3BpX2Rldl9nZXRfbWVtb3J5X3Jlc291
cmNlcyhhZGV2LCAmcmVzb3VyY2VfbGlzdCk7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlnb3RvIG91
dDsKPiArCXJlbnRyeSA9IGxpc3RfZmlyc3RfZW50cnlfb3JfbnVsbCgmcmVzb3VyY2VfbGlzdCwg
c3RydWN0IHJlc291cmNlX2VudHJ5LCBub2RlKTsKPiArCWlmICghcmVudHJ5KQo+ICsJCWdvdG8g
ZnJlZV9yZXNvdXJjZV9saXN0Owo+ICsJaWYgKHJlbnRyeS0+cmVzLT5zdGFydCA9PSBzdGFydF9h
ZGRyKQo+ICsJCWZvdW5kID0gMTsKPiArCj4gK2ZyZWVfcmVzb3VyY2VfbGlzdDoKPiArCWFjcGlf
ZGV2X2ZyZWVfcmVzb3VyY2VfbGlzdCgmcmVzb3VyY2VfbGlzdCk7CgouLi4gY29uc2lkZXIgYWRk
aW5nIGEgX0RTRCBtZXRob2QgdG8gbGFiZWwgKGxpa2UgImJtYy1yZXNldCIpIHRoZSBHUElPCmZv
ciB0aGUgcHJvcG9zZWQgQk1DMCBkZXZpY2Ugc28geW91IGNhbiB1c2UgZGV2bV9ncGlvZF9nZXQg
dG8gZ2V0IHRoZQpHUElPLCBpbnN0ZWFkIG9mIHVzaW5nIHRoZSBoYW5kLWJyZXcgY29kZSB0byBw
YXJzZSB0aGUgQUNQSSBub2RlLiAKU2VlwqBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1s
L2xhdGVzdC9maXJtd2FyZS1ndWlkZS9hY3BpL2dwaW8tcHJvcGVydGllcy5odG1sLgoKQ29tYmlu
aW5nIHRoaXMgd2l0aCBCYXJ0b3N6J3MgY29tbWVudCwgdGhlIGxvZ2ljIHdvdWxkIGJlIGxpa2U6
CgogIGlmIChtaXNzaW5nIHRoZSBBQ1BJIG5vZGUpCiAgICBhc3NpZ24gYSBzd25vZGUgdG8gbGFi
ZWwgImdwaW8xNCIgYXMgImJtYy1yZXNldCI7CgogIGdwaW9fZGVzYyA9IGRldm1fZ3Bpb2RfZ2V0
KCZkZXYsICJibWMtcmVzZXQiLCBHUElPRF9JTik7CgpBbmQgc3VjaCBhIHByb3Bvc2FsIHdpbGwg
bmVlZCB0byBiZSBkaXNjdXNzZWQgd2l0aCBMb29uZ3Nvbi4gIFllcyBJIGtub3cKcGVvcGxlIG1h
eSBoYXRlIHRoZSAiY29udHJvbCIgZnJvbSB0aGUgdmVuZG9yLCBidXQgaGF2aW5nIHNvbWUKZWZm
ZWN0aXZlbHkgZGVhZCBjb2RlIChpLmUuIHN1cHBvcnRpbmcgc29tZSBub24tZXhpc3QgZmlybXdh
cmUpIGluIHRoZQprZXJuZWwgaXMgd29yc2UuCgoKLS0gClhpIFJ1b3lhbyA8eHJ5MTExQHhyeTEx
MS5zaXRlPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Ck9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
