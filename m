Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4347E66D5
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Nov 2023 10:31:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r11Ne-0007O7-7t;
	Thu, 09 Nov 2023 09:31:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1r11NW-0007Na-Mk
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 09:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZaRJeAnLtnsoAcVnPrrTVIGPOj/j7Rm8NJHgu5Q+o94=; b=ZR8klJSbUkyR+4QkKX/YQa9L5L
 kP2TWOM6j3cuGRJ5OwQrDcofJhqODbdFhoVnmQoxzyFST/d+TghWnYRzEQV+rIzmB459AibCQ+SaU
 dUkNleWE6dFKqEKGlwCgijxXXa16dyPgLdZHjFqel6Sd2rBw+Mx33LjP8NjtzV4W0XEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZaRJeAnLtnsoAcVnPrrTVIGPOj/j7Rm8NJHgu5Q+o94=; b=SaeU87sVyBVei9HcSqVQPnjVgk
 L+4D9Wn3pJunSK8PNUT2Q0N3Oq7TAR3BC5XyyrinQWIj91p9cS40n1NcB20G3Uy2PkWtTCc+8Z8bG
 bPTzcc/6CYIoQCpVdNcnL1xLtR7rx1XfzKOpYJVWm4CTEET5N5Jd5WRMDkN9F+NRHEXg=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r11NP-00082z-DG for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 09:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1699521283;
 bh=ZaRJeAnLtnsoAcVnPrrTVIGPOj/j7Rm8NJHgu5Q+o94=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=QVWxZk8GbXqS+zudV/9H8psKuna4NdrgVyFgbqsPUjW3m+6I5Yk06jHSypRTUhYuq
 Uu6Erp6/yImGdWMEniboc/Lma+OzM7iW2IRe8r8dzlh5M+9QVd3tUSN8+BCJwfA+6Y
 zNpoGZ1WtA233Tx7q7EuAN+LqcUPxWS9FExxiTc8=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
In-Reply-To: <ZRujFdwLxQVVfQj7@mail.minyard.net>
Date: Thu, 9 Nov 2023 10:14:22 +0100
Message-Id: <3B168EB2-55E5-4F40-BAEC-A1861CDBE2D3@flyingcircus.io>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
 <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
 <ZRujFdwLxQVVfQj7@mail.minyard.net>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, > On 3. Oct 2023, at 07:13,
 Corey Minyard <minyard@acm.org>
 wrote: > > Yeah, I understand how this would be a strange scenario. I have
 seen > this happen in the real world, so it is something that's p [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flyingcircus.io]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r11NP-00082z-DG
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksCgoKCj4gT24gMy4gT2N0IDIwMjMsIGF0IDA3OjEzLCBDb3JleSBNaW55YXJkIDxtaW55YXJk
QGFjbS5vcmc+IHdyb3RlOgo+IAo+IFllYWgsIEkgdW5kZXJzdGFuZCBob3cgdGhpcyB3b3VsZCBi
ZSBhIHN0cmFuZ2Ugc2NlbmFyaW8uICBJIGhhdmUgc2Vlbgo+IHRoaXMgaGFwcGVuIGluIHRoZSBy
ZWFsIHdvcmxkLCBzbyBpdCBpcyBzb21ldGhpbmcgdGhhdCdzIHBvc3NpYmxlLCBidXQgSQo+IHRo
aW5rIHRoZSBwcmludGsgY2hhbmdlcyB3ZW50IGluIGJlZm9yZSA1LjEwLgo+IAo+IE1heWJlIGEg
ZmlybXdhcmUgdXBkYXRlIHRvIHRoZSBCTUM/ICBJIHRoaW5rIHlvdSB3b3VsZCBoYXZlIG1lbnRp
b25lZAo+IHRoYXQsIHRob3VnaC4KCmRvIHlvdSBrbm93IGhvdyB0byByZXByb2R1Y2UgdGhpcyBl
cnJvcj8gSeKAmXZlIGRpc2FibGVkIFNPTCBsb2dnaW5nIG9uIG9uZSBvZiB0aGUgYWZmZWN0ZWQg
bWFjaGluZXMgKGl0IG1pZ2h0IGJlIHJlbGF0ZWQgdG8gdGhlIHNwZWNpZmljIEJNQyBhbmQgSeKA
mW0gY29uc2lkZXJpbmcgQk1DIGZpcm13YXJlIHVwZGF0ZXMpIGJ1dCBJ4oCZdmUgc3BhbW1lZCB0
aGUga21zZyB0aGF0IGFyZSBzZW50IHRvIHRoZSBTT0wgZm9yIDEyKyBob3VycyBpbiBhIHRpZ2h0
IGJhc2ggbG9vcCB3aXRob3V0IGFuIFNPTCBhdHRhY2hlZCBhbmQgZGlkIG5vdCB0cmlnZ2VyIHRo
ZSBpc3N1ZeKApiAKCk5leHQgdG8gdGhlIEJNQyBmaXJtd2FyZSB1cGRhdGUgSeKAmW0gYWxzbyBj
b25zaWRlcmluZyBzd2l0Y2hpbmcgZnJvbSA1LjEwIHRvIDUuMTUgKHdl4oCZcmUgaGF2aW5nIGlz
c3VlcyBpbiA2LjEgYXQgdGhlIG1vbWVudCBzbyBJIGRvbuKAmXQgd2FudCB0byBnbyB0aGVyZSBy
aWdodCBub3cpIGJ1dCBJ4oCZZCBsb3ZlIGlmIEkgY291bGQgY29uc3RydWN0IGEgcmVwcm9kdWNl
ciDigKYgCgpVbmZvcnR1bmF0ZWx5IHRoZSBCTUMgZmlybXdhcmVzIGRvIG5vdCBzaG93IGNoYW5n
ZWxvZ3MgYW5kIEnigJltIGEgYml0IHdhcnkgb2YgdGhpbmtpbmcgdGhhdCBhIEJNQyBpc3N1ZSB3
b3VsZCBiZSB0aGUgY3VscHJpdCBoZXJlIOKApiAtXy0KCkkgYWxzbyBkaWRu4oCZdCBmaW5kIHRo
ZSBvcmlnaW5hbCBjb21taXQgdGhhdCB5b3UgbWVudGlvbmVkIHdvdWxkIGJlIGZpeGluZyBpdCDi
gKYgYSBoaW50IGZvciB3aGF0IHRvIHNlYXJjaCBmb3IgaW4gdGhlIGNoYW5nZWxvZ3Mgd291bGQg
YmUgbXVjaCBhcHByZWNpYXRlZCEKCktpbmQgcmVnYXJkcywKQ2hyaXN0aWFuCgotLSAKQ2hyaXN0
aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEgMApGbHlp
bmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1
cy5pbwpMZWlwemlnZXIgU3RyLiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRz
Y2hsYW5kCkhSIFN0ZW5kYWwgSFJCIDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3Rp
YW4gVGhldW5lLCBDaHJpc3RpYW4gWmFncm9kbmljawoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
