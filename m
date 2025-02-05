Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2891A27FE0
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 Feb 2025 01:01:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfSqv-0003HV-5i;
	Wed, 05 Feb 2025 00:01:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1tfSqs-0003HO-H4
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 00:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GWQWzYt8utmoJ+vGnEmbU1n9a9uX+2dxeh0p6epdA/g=; b=XgvqV1l4+DD9qFBYPBKwiPwQ0a
 I6Jvrrkyq0gSQ491jQ8DjTwRxqRuCUMMjXsm8B22Xq2VjRFuAvCNYqL0LUzRXviMFABPgsn9e6wTO
 94/8Hcuy6kK3PgV0YtWWlrKZ+StZnCeYHcaz69rXV9LUqkkpzRVTv6jFzn0sm5jkc/+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GWQWzYt8utmoJ+vGnEmbU1n9a9uX+2dxeh0p6epdA/g=; b=F+TzW8kAsmpGIipUh887AAYOYI
 6Q6idPsP0ZlBZkckpgc8dNbvs7hJV9RS5UIfjoGO5Mf0FjjwMrr25W2ggaLOb093xeAVeCE07UG9f
 g2EiYFJQwSQXZrZU8GiK/63gmjTiJCWFjNpHnrBS46HoJIZ71cFc92WC7u+HHQvxWx+c=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfSqr-0005MP-O5 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 00:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1738713657;
 bh=GWQWzYt8utmoJ+vGnEmbU1n9a9uX+2dxeh0p6epdA/g=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=G5V0byMamZKCiKzf3lArq4TYeY5xEWC8oOt2fXx/T04duFwgkWOGBbfVgQcbMEZzZ
 ehkem+9oG4eutuRSWau/YSE9SkJCh1rQ88Zey+Eb9cX0nTpHYDwpSKxkCNJrynFyAN
 VCE7DcFnp+8JO0OXy0CFmvPzc6Q/jSdFqjIdEYvPiExZXmyPrTUHI25vrocZJoeRJl
 AUU57qZK5Jx6FzqmErxeDMKftT7YaM1cBJ1Fjjx/i7JNMKCn5Xx60vDAG90IjA1XfA
 jt9FaxFYR+p18EJ1dFp0WFLxoaRfWYtaCVzBdm+vGHPyiL4kXPdaNKeSGchkbAdtY+
 FD0cpUz4eeelA==
Received: from [192.168.68.112]
 (ppp118-210-185-209.adl-adc-lon-bras34.tpg.internode.on.net
 [118.210.185.209])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 992C37104E;
 Wed,  5 Feb 2025 08:00:55 +0800 (AWST)
Message-ID: <fd92f75620e48957c2875cdcfd1285c33d3176e6.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Ninad Palsule <ninad@linux.ibm.com>, minyard@acm.org
Date: Wed, 05 Feb 2025 10:30:53 +1030
In-Reply-To: <20250204194115.3899174-2-ninad@linux.ibm.com>
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
 <20250204194115.3899174-2-ninad@linux.ibm.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Tue, 2025-02-04 at 13:41 -0600, Ninad Palsule
 wrote: > Add device tree binding document for the IPMB device interface.
 > This device is already in use in both driver and .dts files. > > Reviewed-by
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tfSqr-0005MP-O5
Subject: Re: [Openipmi-developer] [PATCH v9 1/9] dt-bindings: ipmi: Add
 binding for IPMB device
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
Cc: andrew@lunn.ch, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 robh@kernel.org, brgl@bgdev.pl, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, krzk+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQ29yZXksCgpPbiBUdWUsIDIwMjUtMDItMDQgYXQgMTM6NDEgLTA2MDAsIE5pbmFkIFBhbHN1
bGUgd3JvdGU6Cj4gQWRkIGRldmljZSB0cmVlIGJpbmRpbmcgZG9jdW1lbnQgZm9yIHRoZSBJUE1C
IGRldmljZSBpbnRlcmZhY2UuCj4gVGhpcyBkZXZpY2UgaXMgYWxyZWFkeSBpbiB1c2UgaW4gYm90
aCBkcml2ZXIgYW5kIC5kdHMgZmlsZXMuCj4gCj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIChB
cm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogTmluYWQgUGFsc3VsZSA8bmlu
YWRAbGludXguaWJtLmNvbT4KPiAtLS0KPiDCoC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkv
aXBtYi1kZXYueWFtbMKgwqDCoCB8IDU2Cj4gKysrKysrKysrKysrKysrKysrKwo+IMKgMSBmaWxl
IGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKykKPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9pcG1iLQo+IGRldi55YW1sCgpXb3VsZCB5
b3UgbGlrZSB0byB0YWtlIHRoaXMgdGhyb3VnaCB0aGUgSVBNSSB0cmVlPyBPdGhlcndpc2UgSSdt
IGhhcHB5CnRvIHRha2UgaXQgdGhyb3VnaCB0aGUgQk1DIHRyZWUgd2l0aCB5b3VyIGFjay4KCkFu
ZHJldwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpP
cGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
