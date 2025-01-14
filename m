Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E11F8A113D6
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jan 2025 23:08:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXp5O-0005f6-Cj;
	Tue, 14 Jan 2025 22:08:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXp5M-0005f0-SY
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 22:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9FTzMRGKReVo8rRd51mMDR1WUTZm8UGLKzKl1Ziuew=; b=F/0UNApKxk4ZUpz/TsoDstwTnk
 Oc73yyqSWIL976bk59QHKvftnTnqxedIVXWfCjpilaWN+QLdFEqSRg4MFzPBc7N5paUSE9yoR0QIT
 1I3l8mswYoywQbyM4FLFLFrXMwXEmWyZxcmVzrX3ZX6I4/qnMyFmO93XJ7rHvrDIZV+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H9FTzMRGKReVo8rRd51mMDR1WUTZm8UGLKzKl1Ziuew=; b=fYlO9jFzvUlK5p6IDaG5OJdirE
 Kh3cPksmH6ijfZRbGow4DzdM2ox9lIBR6hPhRVgYEpGYamwGRE+4A+TgMU02rMsnTwVgSXmCwEveO
 SjHRbfJ+54HfUyqIxzZIFGfFHnOMUxxRbOFi6c3V/+L+sKRyC2VU216MLen6sh+Y6fQ0=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXp5M-0001V1-3J for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 22:08:32 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50EFUS7u020161;
 Tue, 14 Jan 2025 22:08:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=H9FTzM
 RGKReVo8rRd51mMDR1WUTZm8UGLKzKl1Ziuew=; b=rzD4kMaQ+5YxCEChLLPEXm
 W6guXK23lS9Fn9Uv4NQ5UaODFoctFHzatf8ruqrMX2XLg5+HDXTB2DLjyTnk3Q3I
 J0Lb5vsOjO+5V/cl3pxC71UwDhEhnZ8XbMtJX4mnotc7f0DciITaDpaTqy4UyNp0
 5Ki5BM8U+xXaP/wqhOjG79+l2MmrnitWTUpjS6FzrXCb1HslWN2V6uMJumGIWmtc
 +HTvzG7Wnf5DIjDpsdaHyL942COFy+2uKZ9ms72AlN59FjmFiLypqOa2CiIwIFnn
 35yb4UHbo8OoKUTAgGPWfavgjGzu3WJd5nrw3dgl9prok8M2kmpNyCB3hmEz4Xlg
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 445tmghpby-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 22:07:59 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50EM7pTd011791;
 Tue, 14 Jan 2025 22:07:59 GMT
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 445tmghpbv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 22:07:59 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50EIvnK6001110;
 Tue, 14 Jan 2025 22:07:58 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 44456jw2r8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2025 22:07:58 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com
 [10.39.53.230])
 by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50EM7vp428050170
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Jan 2025 22:07:57 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7373558054;
 Tue, 14 Jan 2025 22:07:57 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 43E5C5805A;
 Tue, 14 Jan 2025 22:07:56 +0000 (GMT)
Received: from [9.61.120.113] (unknown [9.61.120.113])
 by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 14 Jan 2025 22:07:56 +0000 (GMT)
Message-ID: <6eb91fb6-eac9-4386-98c8-196ac3d51e7b@linux.ibm.com>
Date: Tue, 14 Jan 2025 16:07:55 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: corey@minyard.net
References: <20250113194822.571884-1-ninad@linux.ibm.com>
 <20250113194822.571884-3-ninad@linux.ibm.com>
 <Z4aUyX8g-JprzLpd@mail.minyard.net>
Content-Language: en-US
In-Reply-To: <Z4aUyX8g-JprzLpd@mail.minyard.net>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: C0WHlT9TpC8xSLH_NeldTho0i_3p3X2Z
X-Proofpoint-ORIG-GUID: isMDwKsHEYgDk1WkKrzf-SSVOFPHI0hO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-14_07,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 adultscore=0 mlxlogscore=999 mlxscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501140166
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Corey, Thanks for the review. On 1/14/25 10:46, Corey
 Minyard wrote: > On Mon, Jan 13, 2025 at 01:48:12PM -0600, Ninad Palsule
 wrote: >> Add device tree binding document for the IPMB device interface.
 >> This device is already in [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tXp5M-0001V1-3J
Subject: Re: [Openipmi-developer] [PATCH v4 2/9] bindings: ipmi: Add binding
 for IPMB device intf
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
Cc: robh@kernel.org, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGVsbG8gQ29yZXksCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpPbiAxLzE0LzI1IDEwOjQ2LCBD
b3JleSBNaW55YXJkIHdyb3RlOgo+IE9uIE1vbiwgSmFuIDEzLCAyMDI1IGF0IDAxOjQ4OjEyUE0g
LTA2MDAsIE5pbmFkIFBhbHN1bGUgd3JvdGU6Cj4+IEFkZCBkZXZpY2UgdHJlZSBiaW5kaW5nIGRv
Y3VtZW50IGZvciB0aGUgSVBNQiBkZXZpY2UgaW50ZXJmYWNlLgo+PiBUaGlzIGRldmljZSBpcyBh
bHJlYWR5IGluIHVzZSBpbiBib3RoIGRyaXZlciBhbmQgLmR0cyBmaWxlcy4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogTmluYWQgUGFsc3VsZSA8bmluYWRAbGludXguaWJtLmNvbT4KPj4gLS0tCj4+ICAg
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9pcG1iLWRldi55YW1sICAgIHwgNTUgKysrKysr
KysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspCj4+ICAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1p
L2lwbWItZGV2LnlhbWwKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9pcG1pL2lwbWItZGV2LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvaXBtaS9pcG1iLWRldi55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uMTM2ODA2Y2JhNjMyCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvaXBtYi1kZXYueWFtbAo+PiBA
QCAtMCwwICsxLDU1IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1v
bmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2lwbWkvaXBtYi1kZXYueWFtbCMKPj4gKyRzY2hlbWE6
IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+PiArCj4+ICt0
aXRsZTogVGhlIEludGVsbGlnZW50IFBsYXRmb3JtIE1hbmFnZW1lbnQgQnVzKElQTUIpIERldmlj
ZQo+PiArCj4+ICtkZXNjcmlwdGlvbjogfAo+PiArICBUaGUgSVBNQiBpcyBhbiBJMkMgYnVzIHdo
aWNoIHByb3ZpZGVzIGludGVyY29ubmVjdGlvbiBiZXR3ZWVuIEJhc2Vib2FyZAo+ICJCYXNlYm9h
cmQgLT4gImEgQmFzZWJvYXJkIgpGaXhlZC4KPgo+PiArICBNYW5hZ2VtZW50IENvbnRyb2xsZXIo
Qk1DKSBhbmQgY2hhc3NpcyBlbGVjdHJvbmljcy4gVGhlIEJNQyBzZW5kcyBJUE1JCj4+ICsgIHJl
cXVlc3RzIHRvIGludGVsbGlnZW50IGNvbnRyb2xsZXJzIGxpa2UgU2F0ZWxsaXRlIE1hbmFnZW1l
bnQgQ29udHJvbGxlcihNQykKPj4gKyAgZGV2aWNlIHZpYSBJUE1CIGFuZCB0aGUgZGV2aWNlIHNl
bmRzIGEgcmVzcG9uc2UgYmFjayB0byB0aGUgQk1DLgo+IGRldmljZSAtPiBkZXZpY2VzCj4gImEg
cmVzcG9uc2UiIC0+IHJlc3BvbnNlcwpGaXhlZAo+Cj4+ICsgIFRoaXMgZGV2aWNlIGJpbmRzIGJh
Y2tlbmQgU2F0ZWxpdGUgTUMgd2hpY2ggaXMgYSBJMkMgc2xhdmUgZGV2aWNlIHdpdGggdGhlIEJN
Qwo+IFlvdSB1c2UgSVBNQiBkZXZpY2VzIG9uIGJvdGggdGhlIEJNQyBhbmQgdGhlIE1Dcy4gIFRo
ZSBzZW50ZW5jZSBhYm92ZSBpcwo+IGEgbGl0dGxlIGNvbmZ1c2luZywgdG9vLiAgSG93IGFib3V0
Ogo+Cj4gVGhpcyBkZXZpY2UgdXNlcyBhbiBJMkMgc2xhdmUgZGV2aWNlIHRvIHNlbmQgYW5kIHJl
Y2VpdmUgSVBNQiBtZXNzYWdlcywKPiBlaXRoZXIgb24gYSBCTUMgb3Igb3RoZXIgTUMuCkNoYW5n
ZWQKPgo+PiArICBmb3IgbWFuYWdlbWVudCBwdXJwb3NlLiBBIG1pc2NhbGxlbmVvdXMgZGV2aWNl
IHByb3ZpY2VzIGEgdXNlciBzcGFjZSBwcm9ncmFtCj4gTWlzc3BlbGxpbmc6IG1pc2NlbGxhbmVv
dXMKRml4ZWQuCj4KPj4gKyAgdG8gY29tbXVuaWNhdGUgd2l0aCBrZXJuZWwgYW5kIGJhY2tlbmQg
ZGV2aWNlLiBTb21lIElQTUIgZGV2aWNlcyBvbmx5IHN1cHBvcnQKPiAia2VybmVsIiAtPiAidGhl
IGtlcm5lbCIKRml4ZWQKPgo+PiArICBJMkMgcHJvdG9jb2wgaW5zdGVhZCBvZiBTTUIgcHJvdG9j
b2wuCj4gdGhlIEkyQyBwcm90b2NvbCBhbmQgbm90IHRoZSBTTUIgcHJvdG9jb2wuCj4KPiBZZXMs
IHRoZSBFbmdsaXNoIGxhbmd1YWdlIHVzZXMgd2F5IHRvbyBtYW55IGFydGljbGVzLi4uCj4KPiBU
aGF0IGlzIGEgbG90IG9mIGRldGFpbCwgYnV0IGl0IGxvb2tzIGdvb2QgYmV5b25kIHdoYXQgSSd2
ZSBjb21tZW50ZWQKPiBvbi4KQ2hhbmdlZC4KPgo+PiArCj4+ICsgIElQTUIgY29tbXVuaWNhdGlv
bnMgcHJvdG9jb2wgU3BlY2lmaWNhdGlvbiBWMS4wCj4+ICsgIGh0dHBzOi8vd3d3LmludGVsLmNv
bS9jb250ZW50L2RhbS93d3cvcHVibGljL3VzL2VuL2RvY3VtZW50cy9wcm9kdWN0LWJyaWVmcy9p
cG1wLXNwZWMtdjEuMC5wZGYKPj4gKwo+PiArbWFpbnRhaW5lcnM6Cj4+ICsgIC0gTmluYWQgUGFs
c3VsZSA8bmluYWRAbGludXguaWJtLmNvbT4KPj4gKwo+PiArcHJvcGVydGllczoKPj4gKyAgY29t
cGF0aWJsZToKPj4gKyAgICBlbnVtOgo+PiArICAgICAgLSBpcG1iLWRldgo+PiArCj4+ICsgIHJl
ZzoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgIGkyYy1wcm90b2NvbDoKPj4gKyAgICBk
ZXNjcmlwdGlvbjoKPj4gKyAgICAgIFVzZSBJMkMgYmxvY2sgdHJhbnNmZXIgaW5zdGVhZCBvZiBT
TUJVUyBibG9jayB0cmFuc2Zlci4KPj4gKyAgICB0eXBlOiBib29sZWFuCj4+ICsKPj4gK3JlcXVp
cmVkOgo+PiArICAtIGNvbXBhdGlibGUKPj4gKyAgLSByZWcKPj4gKwo+PiArYWRkaXRpb25hbFBy
b3BlcnRpZXM6IGZhbHNlCj4+ICsKPj4gK2V4YW1wbGVzOgo+PiArICAtIHwKPj4gKyAgICBpMmMg
ewo+PiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKyAgICAgICAgI3NpemUtY2Vs
bHMgPSA8MD47Cj4+ICsKPj4gKyAgICAgICAgaXBtYi1kZXZAMTAgewo+PiArICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJpcG1iLWRldiI7Cj4+ICsgICAgICAgICAgICByZWcgPSA8MHgxMD47Cj4g
SSdtIG5vdCBzdXJlIG9mIHRoZSBjb252ZW50aW9ucyBhcm91bmQgZGV2aWNlIHRyZWUgaGVyZSwg
YnV0IHRoZSByZWcgaXMKPiBub3QgdXNlZCBpbiB0aGUgZHJpdmVyIGFuZCBpdCB3aWxsIGFsd2F5
cyBiZSB0aGUgSTJDIGFkZHJlc3MgdGhhdAo+IGFscmVhZHkgaW4gdGhhdCBub2RlIGp1c3Qgb25l
IGxldmVsIHVwLiAgSXQgZG9lcyBub3Qgc2VydmUgYW55IHB1cnBvc2UKPiB0aGF0IEkgY2FuIHNl
ZS4gIE15IHN1Z2dlc3Rpb24gd291bGQgYmUgdG8gcmVtb3ZlIGl0LgoKVGhlcmUgYXJlIHNvbWUg
Ym9hcmRzIGFscmVhZHkgdXNpbmcgcmVnIHNvIEkgd2lsbCBub3QgYmUgYWJsZSB0byByZW1vdmUK
CmJ1dCBJIGhhdmUgdXBkYXRlZCB0aGUgZXhhbXBsZSB3aGljaCByZWZsZWN0cyB3aGF0IHRob3Nl
IGJvYXJkcyBhcmUgZG9pbmcKCiDCoHdoaWNoIGluZGljYXRlcyB0aGF0IG5vZGUgYWRkcmVzcyBp
cyBPUmVkIHdpdGggSTJDIHNsYXZlZCBhZGRyZXNzLgoKUmVnYXJkcywKCk5pbmFkCgo+Cj4gLWNv
cmV5Cj4KPj4gKyAgICAgICAgICAgIGkyYy1wcm90b2NvbDsKPj4gKyAgICAgICAgfTsKPj4gKyAg
ICB9Owo+PiAtLSAKPj4gMi40My4wCj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBt
aS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
