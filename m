Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E21CF872C65
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Mar 2024 02:58:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhgY1-0001Ft-I2;
	Wed, 06 Mar 2024 01:58:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1rhgXt-0001Fe-Lg
 for openipmi-developer@lists.sourceforge.net;
 Wed, 06 Mar 2024 01:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o5h/qQVxLt6NgE3T7v9N6ShWViN6kDVH3QiOpWQqsak=; b=SOaPUOnbbQ+gMlrtUv9XJBFh/o
 XWJl8i4JkFExt8QIqKol1WOpgMNBlRyXAbOpVscfwZ5OJJNU7eEJa/7rqFR+NSxeyU/ZtQWFzdqWO
 HpyIyw+ZvrCgBCZhiNaxfZHu49X7Zg72NSpMvvKm66qsn2CkA/fJf9XyEJGvMwwlItcc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o5h/qQVxLt6NgE3T7v9N6ShWViN6kDVH3QiOpWQqsak=; b=VYFWyGaFsORtIQorZ1u0gp3kwS
 1aG3+dex6+CWbBYOZdnpHg8L+ui4IDGbzOPe0P+FL7OKuYiw8jBLO9XXjhH4w9btHGm+w4mX1SLQN
 3w6cyMozlUueWtolQHnkicERXrZDj/M0BfSj5+Nubxa1viulFPhB6s/jrrVXhSxedWXo=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhgXm-00062K-AW for openipmi-developer@lists.sourceforge.net;
 Wed, 06 Mar 2024 01:58:13 +0000
Received: from [192.168.68.112] (unknown [118.211.95.229])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 66CCE2012A;
 Wed,  6 Mar 2024 09:57:56 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1709690279;
 bh=o5h/qQVxLt6NgE3T7v9N6ShWViN6kDVH3QiOpWQqsak=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=dE+2u2UAb6a5khpCTeuPk8iEVASrLmENsbUJ9nPTxGSdMXjqCuiR6AUIFBkZTc7sV
 DH2XLXLm29HYc/0CsrLIQfwKOb7M+/YshyTYCgR8N9UrBbfEMNtcWFRCE4iSgU5Pzg
 h7XE+Mr7feAuKjR23/sZcYM7E5FHTvVkogt+bt3K/WIzmJUjKlFgrRbFB8qxm/nnI6
 YKa1ZISZuV7XDdoR9Om7UohrKqBExO61zxuJ5v/CRPGKbJglDCMa6aGdOwuUcpB9tI
 BjhNOr1f1omSWW8TEEtT0BKusb0ULHwaT+jvh7xBP7zlJ0z7at2Weu5eBUA0bNzcbY
 wIyS2bpKO3LTg==
Message-ID: <9b390f91102100f1e91098e9d49d6f200aa8a6fd.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, 
 Corey Minyard <minyard@acm.org>, Joel Stanley <joel@jms.id.au>
Date: Wed, 06 Mar 2024 12:27:55 +1030
In-Reply-To: <d125e83788ddc27fc52a3f11b2c329b40cbdd6f9.1709655755.git.u.kleine-koenig@pengutronix.de>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
 <d125e83788ddc27fc52a3f11b2c329b40cbdd6f9.1709655755.git.u.kleine-koenig@pengutronix.de>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 2024-03-05 at 17:27 +0100, Uwe Kleine-König wrote:
    > The .remove() callback for a platform driver returns an int which makes
    > many driver authors wrongly assume it's possible to do error han [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhgXm-00062K-AW
Subject: Re: [Openipmi-developer] [PATCH 5/6] ipmi: kcs_bmc_aspeed: Convert
 to platform remove callback returning void
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
Cc: kernel@pengutronix.de, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCAyMDI0LTAzLTA1IGF0IDE3OjI3ICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBUaGUgLnJlbW92ZSgpIGNhbGxiYWNrIGZvciBhIHBsYXRmb3JtIGRyaXZlciByZXR1cm5z
IGFuIGludCB3aGljaCBtYWtlcwo+IG1hbnkgZHJpdmVyIGF1dGhvcnMgd3JvbmdseSBhc3N1bWUg
aXQncyBwb3NzaWJsZSB0byBkbyBlcnJvciBoYW5kbGluZyBieQo+IHJldHVybmluZyBhbiBlcnJv
ciBjb2RlLiBIb3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyBpZ25vcmVkIChhcGFydAo+IGZy
b20gZW1pdHRpbmcgYSB3YXJuaW5nKSBhbmQgdGhpcyB0eXBpY2FsbHkgcmVzdWx0cyBpbiByZXNv
dXJjZSBsZWFrcy4KPiAKPiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUgaXMgYSBxdWVzdCB0byBtYWtl
IHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuCj4gdm9pZC4gSW4gdGhlIGZpcnN0IHN0ZXAgb2Yg
dGhpcyBxdWVzdCBhbGwgZHJpdmVycyBhcmUgY29udmVydGVkIHRvCj4gLnJlbW92ZV9uZXcoKSwg
d2hpY2ggYWxyZWFkeSByZXR1cm5zIHZvaWQuIEV2ZW50dWFsbHkgYWZ0ZXIgYWxsIGRyaXZlcnMK
PiBhcmUgY29udmVydGVkLCAucmVtb3ZlX25ldygpIHdpbGwgYmUgcmVuYW1lZCB0byAucmVtb3Zl
KCkuCj4gCj4gVHJpdmlhbGx5IGNvbnZlcnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJu
aW5nIHplcm8gaW4gdGhlIHJlbW92ZQo+IGNhbGxiYWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2
YXJpYW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1r
b2VuaWdAcGVuZ3V0cm9uaXguZGU+CgpSZXZpZXdlZC1ieTogQW5kcmV3IEplZmZlcnkgPGFuZHJl
d0Bjb2RlY29uc3RydWN0LmNvbS5hdT4KClRoYW5rcyEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
