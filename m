Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F403AA0623E
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 17:41:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVZ7b-0000eD-SS;
	Wed, 08 Jan 2025 16:41:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVZ7a-0000e5-5n
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 16:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5TOBBHqOyMS3+b4kdmRdFAaeLkCWkCmxH8nM0f3matc=; b=jv7bQDcj7f4I8i4I6xDtrnyaet
 nO8yNfeZhhp17wqMuO1wQRiPxx15eYVUWbN8o5dk1GIFekh6+UQL5cQ2Vrx+afv8KC9ae5QKjg4Vi
 UzNPGkDSexkV3YD2NXjuLy3EDviYZtS3b1uUTVef5gu0tb0+0/r24caolRq8h4gZxtvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5TOBBHqOyMS3+b4kdmRdFAaeLkCWkCmxH8nM0f3matc=; b=IMkEpcDCoS7TXMlk3gb9q+ethn
 pE+Qn78t2JouCejnVqKsCUSReANP7c3nVGdC9VQBbK1OS4jbShKIJC1arRGtYmlE4/rJUIMey4UbU
 D1NrFPEx7hSk800t1bBwYu5A+vL8M5xzlywiInVW1op6K5nMkFdQZvY7gFUzNReo1aE0=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVZ7Y-0000eH-Px for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 16:41:29 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 508E6Uf6000755;
 Wed, 8 Jan 2025 16:40:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=5TOBBH
 qOyMS3+b4kdmRdFAaeLkCWkCmxH8nM0f3matc=; b=VeX5kEvv6hbysgCW66F8P3
 xB0o/Zqz2DzsETrksxR2urmZYNmnmrst2bOKwm3rz89l9uKn6aWTbq3RlfJCK8Dz
 yzfi+ci+/6Olf+mnowpzBsdvJYWi+az/eVnRIUF0AzwVN6y5437YqdXLEbiFsJca
 J+/tPn8MezziAbxu+1MDwmUbi+sSvX8nIo6cGsmQk95KPzCqx5N6R/l83WzpKIDU
 BnCZmQAKrGpvC7HWtNfUHZ7WTtUwYk6+6LEP1arJqC5FW7uB0ggP3I3yAJSc77io
 FpWaJy79dVbjtT7cwjm2GWJ5AiPillkLrV080eW3x/UXygC2elAXHKypp/e2Y/Ig
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441tu5gpw0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 16:40:42 +0000 (GMT)
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 508GY3r1007659;
 Wed, 8 Jan 2025 16:40:41 GMT
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441tu5gpvu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 16:40:41 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 508Ei9SX026179;
 Wed, 8 Jan 2025 16:40:40 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yj128drg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 16:40:40 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com
 [10.39.53.229])
 by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 508GeecU33096362
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 Jan 2025 16:40:40 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3AFAE58058;
 Wed,  8 Jan 2025 16:40:40 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A6BDD58059;
 Wed,  8 Jan 2025 16:40:38 +0000 (GMT)
Received: from [9.24.12.86] (unknown [9.24.12.86])
 by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Wed,  8 Jan 2025 16:40:38 +0000 (GMT)
Message-ID: <eeee4fac-49b4-4ca5-96a7-d074a154c698@linux.ibm.com>
Date: Wed, 8 Jan 2025 10:40:38 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>
References: <20250107162350.1281165-1-ninad@linux.ibm.com>
 <20250107162350.1281165-3-ninad@linux.ibm.com>
 <20250107231311.GA1965288-robh@kernel.org>
Content-Language: en-US
In-Reply-To: <20250107231311.GA1965288-robh@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: _jrtb6V25uHEEaH06T2WnmoHwGUcggFZ
X-Proofpoint-ORIG-GUID: XJ4GUB3CwPUykCi4vVr_Tm-vLPt7okCO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501080137
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Rob, Thanks for the review. On 1/7/25 17:13,
 Rob Herring
 wrote: > On Tue, Jan 07, 2025 at 10:23:39AM -0600, Ninad Palsule wrote: >>
 Add device tree binding document for the IPMB device interface driver. >
 Please mention this is [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tVZ7Y-0000eH-Px
Subject: Re: [Openipmi-developer] [PATCH v2 02/10] bindings: ipmi: Add
 binding for IPMB device intf
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, ratbert@faraday-tech.com,
 minyard@acm.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch, edumazet@google.com,
 linux-aspeed@lists.ozlabs.org, kuba@kernel.org, krzk+dt@kernel.org,
 pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGVsbG8gUm9iLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKT24gMS83LzI1IDE3OjEzLCBSb2Ig
SGVycmluZyB3cm90ZToKPiBPbiBUdWUsIEphbiAwNywgMjAyNSBhdCAxMDoyMzozOUFNIC0wNjAw
LCBOaW5hZCBQYWxzdWxlIHdyb3RlOgo+PiBBZGQgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVu
dCBmb3IgdGhlIElQTUIgZGV2aWNlIGludGVyZmFjZSBkcml2ZXIuCj4gUGxlYXNlIG1lbnRpb24g
dGhpcyBpcyBhbHJlYWR5IGlzIGFscmVhZHkgaW4gdXNlIGJvdGggaW4gYSBkcml2ZXIgYW5kCj4g
LmR0cyBmaWxlcy4KPgo+PiBTaWduZWQtb2ZmLWJ5OiBOaW5hZCBQYWxzdWxlIDxuaW5hZEBsaW51
eC5pYm0uY29tPgo+PiAtLS0KPj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL2lwbWIt
ZGV2LnlhbWwgICAgfCA0MiArKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQs
IDQyIGluc2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvaXBtYi1kZXYueWFtbAo+Pgo+PiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvaXBtYi1kZXYueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL2lwbWItZGV2LnlhbWwKPj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi45MTM2YWM4MDA0ZGMKPj4g
LS0tIC9kZXYvbnVsbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
aXBtaS9pcG1iLWRldi55YW1sCj4+IEBAIC0wLDAgKzEsNDIgQEAKPj4gKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+PiArJVlBTUwgMS4y
Cj4+ICstLS0KPj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvaXBtaS9pcG1i
LWRldi55YW1sIwo+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1h
cy9jb3JlLnlhbWwjCj4+ICsKPj4gK3RpdGxlOiBJUE1CIERldmljZSBEcml2ZXIKPiBCaW5kaW5n
cyBhcmUgZm9yIGRldmljZXMsIG5vdCBkcml2ZXJzLiBEcm9wICdEcml2ZXInLiBJdCdzIGEgc3Ry
ZXRjaAo+IHRoYXQgSVBNQiBpcyBldmVuIGEgZGV2aWNlLCBidXQgc2luY2UgdGhlcmUgYXJlIGFs
cmVhZHkgYSBmZXcgdXNlcnMsIEkKPiBndWVzcyB3ZSdyZSBzdHVjayB3aXRoIGl0LgpVcGRhdGVk
IHRoZSB0aXRsZS4KPgo+PiArCj4+ICtkZXNjcmlwdGlvbjogSVBNQiBEZXZpY2UgRHJpdmVyIGJp
bmRpbmdzCj4gTm8gcG9pbnQgaW4gYSBkZXNjcmlwdGlvbiB0aGF0IGp1c3QgcmVwZWF0cyB0aGUg
dGl0bGUuIFBsZWFzZSBleHBhbmQKPiB0aGlzLiBGb3IgZXhhbXBsZSwgQUlVSSwgdGhpcyBpcyBm
b3IgdGhlIGRldmljZSBlbmQsIG5vdCB0aGUgQk1DIGVuZC4KVXBkYXRlZCB0aGUgZGVzY3JpcHRp
b24uCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIE5pbmFkIFBhbHN1bGUgPG5pbmFkQGxp
bnV4LmlibS5jb20+Cj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsg
ICAgZW51bToKPj4gKyAgICAgIC0gaXBtYi1kZXYKPj4gKwo+PiArICByZWc6Cj4+ICsgICAgbWF4
SXRlbXM6IDEKPiBBcyB0aGlzIGlzIHRoZSBzbGF2ZSBlbmQsIEkyQ19PV05fU0xBVkVfQUREUkVT
UyBzaG91bGQgYmUgc2V0LiBTbzoKPgo+IG1pbmltdW06IDB4NDAwMDAwMDAKPiBtYXhpbXVtOiAw
eDQwMDAwMDdmCgpUaGUgZHRfY2hlY2sgc2NyaXB0IGRvZXNuJ3QgYWxsb3cgbWluLCBtYXggZm9y
IHRoZSByZWcgdHlwZS4KCi9ob21lL25pbmFkL2Rldi9zYnAxL2xpbnV4L0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL2lwbWItZGV2LnlhbWw6IApwcm9wZXJ0aWVzOnJlZzog
J21pbmltdW0nIHNob3VsZCBub3QgYmUgdmFsaWQgdW5kZXIgeydlbnVtJzogWydjb25zdCcsIAon
ZW51bScsICdleGNsdXNpdmVNYXhpbXVtJywgJ2V4Y2x1c2l2ZU1pbmltdW0nLCAnbWluaW11bScs
ICdtYXhpbXVtJywgCidtdWx0aXBsZU9mJywgJ3BhdHRlcm4nXX0KIMKgwqDCoCBoaW50OiBTY2Fs
YXIgYW5kIGFycmF5IGtleXdvcmRzIGNhbm5vdCBiZSBtaXhlZAogwqDCoMKgIGZyb20gc2NoZW1h
ICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9rZXl3b3Jkcy55YW1sIwov
aG9tZS9uaW5hZC9kZXYvc2JwMS9saW51eC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaXBtaS9pcG1iLWRldi55YW1sOiAKcHJvcGVydGllczpyZWc6ICdtYXhpbXVtJyBzaG91bGQg
bm90IGJlIHZhbGlkIHVuZGVyIHsnZW51bSc6IFsnY29uc3QnLCAKJ2VudW0nLCAnZXhjbHVzaXZl
TWF4aW11bScsICdleGNsdXNpdmVNaW5pbXVtJywgJ21pbmltdW0nLCAnbWF4aW11bScsIAonbXVs
dGlwbGVPZicsICdwYXR0ZXJuJ119CiDCoMKgwqAgaGludDogU2NhbGFyIGFuZCBhcnJheSBrZXl3
b3JkcyBjYW5ub3QgYmUgbWl4ZWQKIMKgwqDCoCBmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZp
Y2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMva2V5d29yZHMueWFtbCMKCj4KPiBNYXliZSAxMC1iaXQg
YWRkcmVzc2luZyBoYXMgdG8gYmUgc3VwcG9ydGVkIHRvbz8KRHJpdmVyIG9ubHkgdXNlcyA3IGFu
ZCA4IGJpdCBhZGRyZXNzZXMKPgo+PiArCj4+ICsgIGkyYy1wcm90b2NvbDoKPj4gKyAgICBkZXNj
cmlwdGlvbjoKPj4gKyAgICAgIFRoaXMgcHJvcGVydHkgc3BlY2lmaWVzIHRoYXQgdGhlIEkyQyBi
bG9jayB0cmFuc2ZlciBzaG91bGQgYmUgcGVyZm9ybWVkCj4+ICsgICAgICBpbnN0ZWFkIG9mIFNN
QlVTIGJsb2NrIHRyYW5zZmVyLgo+IFRoaXMgY2FuIGJlIG1vcmUgY29uY2lzZWx5IHNhaWQ6Cj4K
PiBVc2UgSTJDIGJsb2NrIHRyYW5zZmVyIGluc3RlYWQgb2YgU01CVVMgYmxvY2sgdHJhbnNmZXIu
CkRvbmUKPgo+PiArICAgIHR5cGU6IGJvb2xlYW4KPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0g
Y29tcGF0aWJsZQo+PiArICAtIHJlZwo+PiArCj4+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFs
c2UKPj4gKwo+PiArZXhhbXBsZXM6Cj4+ICsgIC0gfAo+PiArICAgIGkyYyB7Cj4+ICsgICAgICAg
IGkyY0AxMCB7Cj4gJ2kyYycgbm9kZSBuYW1lIGlzIGZvciBpMmMgYnVzZXMgYW5kIHRoaXMgaXMg
bm90IG9uZS4gJ2lwbWInIGlzIHByb2JhYmx5Cj4gZmluZSBoZXJlLgoKRG9uZQoKUmVnYXJkcywK
Ck5pbmFkCgo+PiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJpcG1iLWRldiI7Cj4+ICsgICAg
ICAgICAgICByZWcgPSA8MHgxMD47Cj4+ICsgICAgICAgICAgICBpMmMtcHJvdG9jb2w7Cj4+ICsg
ICAgICAgIH07Cj4+ICsgICAgfTsKPj4gLS0gCj4+IDIuNDMuMAo+PgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
