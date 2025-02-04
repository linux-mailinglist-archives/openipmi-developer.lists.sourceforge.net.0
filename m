Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A274A27B73
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Feb 2025 20:40:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfOmj-000529-Pd;
	Tue, 04 Feb 2025 19:40:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tfOmi-00051v-Bx
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 19:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L0+ep8JKH1qnWrvTGJ8l/LlGnrRt9fPRrJ/gx5Vk9ZE=; b=gCvzo+ZcA01WP3lH00pGecsRln
 4t2r9Gc6ii/FXI9064Edh6nRZX1A6PGY1is4Yl/0+06vpXPw8vNesbKVm/peXaKU9NZF3xduDEw8C
 9kSOGnZyiOUgL8VNyu4x5DwR627jCCaCNFXaRF1Fp2anF6/DL+iHGRxHmKPom13R53tc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L0+ep8JKH1qnWrvTGJ8l/LlGnrRt9fPRrJ/gx5Vk9ZE=; b=YKwiWH2EsaxSmRAkNqIiGs3Oay
 3h62fDO6ZGV4ctwrM8kvcx8o9hsL4enArz8e+7/evjURT7ieCMWYThLYuJ+PwG9mA3qKdB6rVSMKG
 p/vAeP2Inu1kKU1HJ3KB4iTz8VzR2O6gE5M29ctq+yUukv4DqblpeMN01LcWKvR1ldWg=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfOmh-0005nj-4A for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 19:40:35 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 514GEoDk029325;
 Tue, 4 Feb 2025 19:40:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=L0+ep8
 JKH1qnWrvTGJ8l/LlGnrRt9fPRrJ/gx5Vk9ZE=; b=PwrUb4y3MmwnbtPg+ZzKUr
 +/8JqqtwjhhBk3mEKl0dmG8JHNmk3j4mjOgFhiCoGSqB0BSDM4zUnZoxqSPOcPiw
 8nlNFh+GDjKEKMBusvQZrDCYKzDHGh2Ylq2nC6ymV35pBYeDbCsjYmjNnsF6MELa
 2hmKFbN9QHOBSsfmbC5S6edM+YStnJyPAvtle8tg9x2Eq1P3mRTZx3rjaoVi1lb0
 gvIjQwtdwjSOSLRTP/su3jjdBeRFZspIag88OXEd4a+4vXh29uKJPoVZn8vUkDu2
 O6e9xEbDnatuWQ6ZACzjkrw6DWqrk//B9eIKZGooug3jErrfn754cG7JZ7uIOusQ
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44k8y9n2fk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 19:40:07 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 514JRPbB010902;
 Tue, 4 Feb 2025 19:40:07 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44k8y9n2ff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 19:40:07 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 514JXoDo024540;
 Tue, 4 Feb 2025 19:40:05 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 44hxxn55q4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 19:40:05 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com
 [10.39.53.230])
 by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 514Je4OI26739230
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 4 Feb 2025 19:40:05 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D765F58054;
 Tue,  4 Feb 2025 19:40:04 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 95E905805F;
 Tue,  4 Feb 2025 19:40:02 +0000 (GMT)
Received: from [9.67.69.251] (unknown [9.67.69.251])
 by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  4 Feb 2025 19:40:02 +0000 (GMT)
Message-ID: <66e2e5e4-5ce5-442c-ba0f-d12cbe79e868@linux.ibm.com>
Date: Tue, 4 Feb 2025 13:40:01 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Jeffery <andrew@codeconstruct.com.au>, brgl@bgdev.pl,
 linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, joel@jms.id.au, devicetree@vger.kernel.org,
 eajames@linux.ibm.com, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20250203144422.269948-1-ninad@linux.ibm.com>
 <79b819b6d06e3be0aa7e7f6872353f103294710c.camel@codeconstruct.com.au>
Content-Language: en-US
In-Reply-To: <79b819b6d06e3be0aa7e7f6872353f103294710c.camel@codeconstruct.com.au>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: BhN8vCZp0wt20C1zuEMO0Dx_nRHE2XX9
X-Proofpoint-ORIG-GUID: WZwPJdOGC93lfCtccZ-FJMqUiy-K5W1k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-04_09,2025-02-04_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0
 mlxlogscore=965 suspectscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 mlxscore=0 adultscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502040145
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andrew, Thank you for the review. >> >> NINAD PALSULE (6):
 > > Why is your name all in caps here but not for the binding patches > below?
 Can you fix that up? 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tfOmh-0005nj-4A
Subject: Re: [Openipmi-developer] [PATCH v7 0/9] DTS updates for system1 BMC
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
From: Ninad Palsule via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Ninad Palsule <ninad@linux.ibm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQW5kcmV3LAoKVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3LgoKPj4KPj4gTklOQUQgUEFMU1VM
RSAoNik6Cj4gCj4gV2h5IGlzIHlvdXIgbmFtZSBhbGwgaW4gY2FwcyBoZXJlIGJ1dCBub3QgZm9y
IHRoZSBiaW5kaW5nIHBhdGNoZXMKPiBiZWxvdz8gQ2FuIHlvdSBmaXggdGhhdCB1cD8KCkZpeGVk
IGluIHRoZSB2ZXJzaW9uIDkKCgo+PiBOaW5hZCBQYWxzdWxlICgzKToKPj4gIMKgIGJpbmRpbmdz
OiBpcG1pOiBBZGQgYmluZGluZyBmb3IgSVBNQiBkZXZpY2UgaW50Zgo+IAo+IFRoaXMgb25lIG5l
ZWRzIGFuIGFjayBmcm9tIENvcmV5IGlmIEknbSB0byB0YWtlIGl0Lgo+IAo+PiAgwqAgZHQtYmlu
ZGluZ3M6IGdwaW86IGFzdDI0MDAtZ3BpbzogQWRkIGhvZ3MgcGFyc2luZwo+IAo+IFRoaXMgb25l
IG5lZWRzIGFuIGFjayBmcm9tIExpbnVzIFcgb3IgQmFydG9zeiBpZiBJJ20gdG8gdGFrZSBpdC4K
PiBIb3dldmVyLCBpdCdzIGFsc28gY2F1c2luZyBzb21lIGdyaWVmIGZyb20gUm9iJ3MgYm90Ogo+
IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8xNzM4NTk2OTQ4ODkuMjYwMTcyNi4xMDYx
ODMzNjIxOTcyNjE5MzgyNC5yb2JoQGtlcm5lbC5vcmcvCj4gCj4gQXMgdGhlIHJlcG9ydGVkIG5v
ZGVzIHNob3VsZCBhbGwgYmUgaG9ncyB0aGUgbmFtZSBzaG91bGRuJ3QgbWF0dGVyCj4gYW55d2hl
cmUgZWxzZSAoYXMgZmFyIGFzIEknbSBhd2FyZSkuIEl0IHdvdWxkIGJlIG5pY2UgaWYgYWxsIHRo
ZQo+IHdhcm5pbmdzIHdlcmUgY2xlYW5lZCB1cCBiZWZvcmUgd2UgbWVyZ2VkIHRoZSBiaW5kaW5n
IHVwZGF0ZS4gVGhhdCB3YXkKPiB3ZSBkb24ndCBjYXVzZSBldmVyeW9uZSBlbHNlIGxvb2tpbmcg
YXQgdGhlIENIRUNLX0RUQlM9eSBvdXRwdXQgbW9yZQo+IGdyaWVmIHRoYW4gdGhleSBhbHJlYWR5
IGdldCBmb3IgdGhlIEFzcGVlZCBkZXZpY2V0cmVlcy4KPiAKPiBJbiBvcmRlciB0byBub3QgZ2V0
IGJvZ2dlZCBkb3duIGl0IG1pZ2h0IGJlIHdvcnRoIHNwbGl0dGluZyBvdXQgYm90aAo+IHRoZSBJ
UE1CLSBhbmQgR1BJTy0gcmVsYXRlZCBwYXRjaGVzIGxpa2UgeW91IGRpZCB0aGUgRlRHTUFDMTAw
IHBhdGNoLAo+IGFuZCB0aGVuIEkgY2FuIG1lcmdlIHdoYXQgcmVtYWlucyAoZnJvbSBhIHF1aWNr
IGxvb2sgdGhleSBzZWVtCj4gcmVsYXRpdmVseSB1bmNvbnRyb3ZlcnNpYWwpLgo+IAoKVGhlIHdh
cm5pbmdzIGFyZSBmaXhlZCBieSBkaWZmZXJlbnQgcGF0Y2ggYnkgS3J6eXN6dG9mLiBBcyB0aGVy
ZSBhcmUgbm8gCm1vcmUgY2hhbmdlcyB0aGVuIEkgd2lsbCB3YWl0IGZvciBvdGhlciByZXNwb25z
ZXMuIElmIEkgZG9uJ3QgZ2V0IHRob3NlIApyZXNwb25zZSBpbiBjb3VwbGUgb2YgZGF5cyB0aGVu
IEkgd2lsbCBzcGxpdCBpdC4KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgta2VybmVsLzIw
MjUwMTE2MDg1OTQ3Ljg3MjQxLTEta3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnLwoKSSBh
bSBhbHNvIHBsYW5uaW5nIHRvIGZpeCBvbGQgd2FybmluZ3MgaW4gdGhlIHN5c3RlbTEgZHRzIGlu
IHNlcGFyYXRlIHBhdGNoLgoKCi0tIApUaGFua3MgJiBSZWdhcmRzLApOaW5hZAoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCg==
