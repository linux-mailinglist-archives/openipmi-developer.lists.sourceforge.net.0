Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB62A09467
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 15:55:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWGQO-00073m-NL;
	Fri, 10 Jan 2025 14:55:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tWGQN-00073f-Ep
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 14:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+LOJ+gombIgGwG5VFHwn8O9GEmrVpqWrhBqWRMHkUM=; b=mGm42zm4WYg8iSFA3AAqb19BIx
 A3nj3ocWA3KEtr18xM0AqFZLsWP/i0Q+lJJ53BzWvhEZkrqEcEfB+BaTaLHhQOi0mCUzrpS07YyMI
 d6mAJNK8quIaEApmmmzV/6ZhvxbW07O1XaeeHorQkv/ORXMlUtDPbpOrcvDtFTXl773I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+LOJ+gombIgGwG5VFHwn8O9GEmrVpqWrhBqWRMHkUM=; b=k2uLWlIZrSqVtKB7BF6dY2p9sT
 KmH4ql2DWkQ8IW3dPNkwMmz4VDhsOz7P8WJ6ldFne1aUw3wmLLR7pXj5/SJ3i0k0/PzTh+d71eqWg
 O4POQVAi2yTCiLwIlzzOOY7ZiD3LzRLs5KfdmbMy4FWPp0iy5jtIYh59BuzgVzj2RWaA=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWGQN-0000S8-EM for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 14:55:48 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50AE6K88025765;
 Fri, 10 Jan 2025 14:54:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=i+LOJ+
 gombIgGwG5VFHwn8O9GEmrVpqWrhBqWRMHkUM=; b=sHJqOdmcdSdrpGd8AuIzGY
 MFrQCvllj4hEkrUVomjNdrMT+xBN2JKilvHI3xqNhmNaTSXZrv2Jf/67zrtxlO17
 /9IfOB7Q2TyzoS/4o7fSV1L4xAoMF+O43A4xcKVf6El/c6OW5qEuc98VJ+JAZozR
 20BggKe62S5vv29Wl8tneuLygy/S6ZqbDegEI8afL1Z39BLErRcxlLTVHKJ2+djk
 k5c/9Cf1n0XRid31LU5DbyZkSsnpJt+FgVo/6dJ0FkR/v6zbM/OU96ZfyBf8jmqt
 QdDkDaoeAKjdCQsrG83rR169iVZ8mhAIjlEHZJ+BlCRMgCvsNGPd3MddN8V6xgfQ
 ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 443515078v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2025 14:54:52 +0000 (GMT)
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50AEspJG031187;
 Fri, 10 Jan 2025 14:54:51 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 443515078q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2025 14:54:51 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50ACiCwC003614;
 Fri, 10 Jan 2025 14:54:50 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yfatjww2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2025 14:54:50 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com
 [10.39.53.232])
 by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50AEsnjp64291144
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 Jan 2025 14:54:50 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DD0CD58059;
 Fri, 10 Jan 2025 14:54:49 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 04AB158043;
 Fri, 10 Jan 2025 14:54:47 +0000 (GMT)
Received: from [9.61.139.65] (unknown [9.61.139.65])
 by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Fri, 10 Jan 2025 14:54:46 +0000 (GMT)
Message-ID: <81567190-a683-4542-a530-0fb419f5f9be@linux.ibm.com>
Date: Fri, 10 Jan 2025 08:54:46 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Jacky Chou <jacky_chou@aspeedtech.com>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
Content-Language: en-US
In-Reply-To: <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: yBxRhoVKtROkPwpLrEH_vSrRXZ8-RPmL
X-Proofpoint-ORIG-GUID: sRq5wnscmLN25EJIJ55u5_9qYeOUvOt6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 spamscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501100114
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Andrew & Jacky, On 1/10/25 08:04, Andrew Lunn wrote:
 >> Agree. You are right. This part is used to create a gated clock. >> We
 will configure these RGMII delay in bootloader like U-boot. >> Therefore,
 here does not c [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tWGQN-0000S8-EM
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiDlm57opoY6IFtQQVRDSCB2?=
 =?utf-8?q?2_05/10=5D_ARM=3A_dts=3A_aspeed=3A_system1=3A_Add_RGMII_support?=
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "ratbert@faraday-tech.com" <ratbert@faraday-tech.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGVsbG8gQW5kcmV3ICYgSmFja3ksCgpPbiAxLzEwLzI1IDA4OjA0LCBBbmRyZXcgTHVubiB3cm90
ZToKPj4gQWdyZWUuIFlvdSBhcmUgcmlnaHQuIFRoaXMgcGFydCBpcyB1c2VkIHRvIGNyZWF0ZSBh
IGdhdGVkIGNsb2NrLgo+PiBXZSB3aWxsIGNvbmZpZ3VyZSB0aGVzZSBSR01JSSBkZWxheSBpbiBi
b290bG9hZGVyIGxpa2UgVS1ib290Lgo+PiBUaGVyZWZvcmUsIGhlcmUgZG9lcyBub3QgY29uZmln
dXJlIGRlbGF5IGFnYWluLgo+PiBCZWNhdXNlIEFTVDI2MDAgTUFDMS8yIFJHTUlJIGRlbGF5IHNl
dHRpbmcgaW4gc2N1IHJlZ2lvbiBpcyBjb21iaW5lZCB0byBvbmUgMzItYml0IHJlZ2lzdGVyLAo+
PiBNQUMzLzQgaXMgYWxzby4gSSB3aWxsIGFsc28gdXNlICdhbGlhc2UnIHRvIGdldCBNQUMgaW5k
ZXggdG8gc2V0IGRlbGF5IGluIHNjdS4KPj4KPj4gLy8gYXNwZWVkLWc2LmR0c2kKPj4gYWxpYXNl
cyB7Cj4+IAkJLi4uLi4uLi4uLgo+PiAJCW1hYzAgPSAmbWFjMDsKPj4gCQltYWMxID0gJm1hYzE7
Cj4+IAkJbWFjMiA9ICZtYWMyOwo+PiAJCW1hYzQgPSAmbWFjMzsKPj4gCX07Cj4gSSB3b3VsZCBh
dm9pZCB0aGF0LCBiZWNhdXNlIHRoZXkgYXJlIHVuZGVyIGNvbnRyb2wgb2YgdGhlIERUCj4gZGV2
ZWxvcGVyLiBZb3Ugc29tZXRpbWVzIHNlZW4gdGhlIG9yZGVyIGNoYW5nZWQgaW4gdGhlIGhvcGUg
b2YKPiBjaGFuZ2luZyB0aGUgaW50ZXJmYWNlIG5hbWVzLCByYXRoZXIgdGhhbiB1c2UgYSB1ZGV2
IHNjcmlwdCwgb3IKPiBzeXN0ZW1kIG5hbWluZyBzY2hlbWUuCj4KPiBUaGUgcGh5c2ljYWwgYWRk
cmVzcyBvZiBlYWNoIGludGVyZmFjZSBpcyB3ZWxsIGtub3duIGFuZCBmaXhlZD8gQXJlCj4gdGhl
eSB0aGUgc2FtZSBmb3IgYWxsIEFTVHh4eHggZGV2aWNlcz8gSSB3b3VsZCBoYXJkIGNvZGUgdGhl
bSBpbnRvIHRoZQo+IGRyaXZlciB0byBpZGVudGlmeSB0aGUgaW5zdGFuY2UuCj4KPiBCdXQgZmly
c3Qgd2UgbmVlZCB0byBmaXggd2hhdCBpcyBicm9rZW4gd2l0aCB0aGUgZXhpc3RpbmcgRFQgcGh5
LW1vZGVzCj4gZXRjLgo+Cj4gV2hhdCBpcyB0aGUgcmVzZXQgZGVmYXVsdCBvZiB0aGVzZSBTQ1Ug
cmVnaXN0ZXJzPyAwPyBTbyB3ZSBjYW4gdGVsbCBpZgo+IHRoZSBib290bG9hZGVyIGhhcyBtb2Rp
ZmllZCBpdCBhbmQgaW5zZXJ0ZWQgYSBkZWxheT8KCkphY2t5LAoKSGVyZSBhcmUgdGhlIHZhbHVl
cyBvbiBteSBzeXN0ZW0gYW5kIHRob3NlIGFyZSBleHBlY3RlZCB0aGF0IG1lYW5zIAp1LWJvb3Qg
aXMgc2V0dGluZyBjb3JyZWN0IHZhbHVlPwoKIyBkZXZtZW0gMHgxRTZFMjM0MCAzMgoweDkwMjhB
NDEwCiMgZGV2bWVtIDB4MUU2RTIzNDggMzIKMHgwMDQxMDQxMAojIGRldm1lbSAweDFFNkUyMzRj
IDMyCjB4MDA0MTA0MTAKCiMgZGV2bWVtIDB4MUU2RTIzNTAgMzIKMHg0MDEwNDE0NQojIGRldm1l
bSAweDFFNkUyMzU4IDMyCjB4MDAxMDQxNDUKIyBkZXZtZW0gMHgxRTZFMjM1YyAzMgoweDAwMTA0
MTQ1Cgo+Cj4gV2hhdCBpIHRoaW5rIHlvdSBuZWVkIHRvIGRvIGlzIGR1cmluZyBwcm9iZSBvZiB0
aGUgTUFDIGRyaXZlciwgY29tcGFyZQo+IHBoeS1tb2RlIGFuZCBob3cgdGhlIGRlbGF5cyBhcmUg
Y29uZmlndXJlZCBpbiBoYXJkd2FyZS4gSWYgdGhlIGRlbGF5cwo+IGluIGhhcmR3YXJlIGFyZSAw
LCBhc3N1bWUgcGh5LW1vZGUgaXMgY29ycmVjdCBhbmQgdXNlIGl0LiBJZiB0aGUKPiBkZWxheXMg
YXJlIG5vdCAwLCBjb21wYXJlIHRoZW0gd2l0aCBwaHktbW9kZS4gSWYgdGhlIGRlbGF5cyBhbmQK
PiBwaHktbW9kZSBhZ3JlZSwgdXNlIHRoZW0uIElmIHRoZXkgZGlzYWdyZWUsIGFzc3VtZSBwaHkt
bW9kZSBpcyB3cm9uZywKPiBpc3N1ZSBhIGRldl93YXJuKCkgdGhhdCB0aGUgRFQgYmxvYiBpcyBv
dXQgb2YgZGF0ZSwgYW5kIG1vZGlmeQo+IHBoeS1tb2RlIHRvIG1hdGNoIHRoZSBkZWxheXMgaW4g
dGhlIGhhcmR3YXJlLCBpbmNsdWRpbmcgYSBnb29kCj4gZXhwbGFuYXRpb24gb2Ygd2hhdCBpcyBn
b2luZyBvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gaGVscCB0aG9zZQo+IHdpdGggb3V0IG9m
IHRyZWUgRFQgZmlsZXMuIEFuZCB0aGVuIHBhdGNoIGFsbCB0aGUgaW4gdHJlZSBEVCBmaWxlcyB0
bwo+IHVzZSB0aGUgY29ycmVjdCBwaHktbW9kZS4KCkFuZHJldywKCkRvIHdlIG5lZWQgdXBkYXRl
cyBvbiB0aGlzIGRlc2NyaXB0aW9uLiBJdCBkb2Vzbid0IHRhbGsgYWJvdXQgZXh0ZXJuYWwgClBD
QiBsZXZlbCBkZWxheXM/CgpodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9t
YXN0ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9ldGhlcm5ldC1jb250
cm9sbGVyLnlhbWwjTDc3LUw5MAoKVGhpcyBpcyB3aGF0IHlvdSBleHBsYWluZWQ6CgpNQUMgZHJp
dmVyIHJlYWRzIGZvbGxvd2luZyBwaHktbW9kZSBmcm9tIGRldmljZSB0cmVlLiA5NSUgb2YgbWFj
IGRyaXZlciAKZGlyZWN0bHkKIMKgcGFzcyBpdCB0byBQSFkgdGhyb3VnaCBwaHlfY29ubmVjdC4K
CnJnbWlpIC0gUENCIGhhcyBsb25nIGNsb2NrIGxpbmVzIHNvIGRlbGF5IGlzIGFkZGVkIGJ5IFBD
QgogwqDCoMKgwqDCoMKgwqAgT24gdGhpcyBtb2RlIFBIWSBkb2VzIG5vdGhpbmcuCnJnbWlpLWlk
IC0gUENCIGRvZXNuJ3QgYWRkIGRlbGF5LiBFaXRoZXIgTUFDIG9yIFBIWSBuZWVkcyB0byBhZGQg
dGhlIGRlbGF5CiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBZGQgZGVsYXlzIGluIGJvdGggZGlyZWN0
aW9ucy4gU29tZSBQSFkgbWF5IG5vdCBhZGQgZGVsYXkgaW4gCnRoYXQKIMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNhc2UgTUFDIG5lZWRzIHRvIGFkZCB0aGUgZGVsYXkgbWFzayByZ21paS1pZCB0byBy
Z21paS4KcmdtaWktcnhpZCAtIElmIHRoZXJlIGlzIGFuIGV4dHJhIGxvbmcgVFggY2xvY2sgbGlu
ZSwgYnV0IG5vdCBSWCBjbG9jaywKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB5b3Ugd291bGQg
dXNlIHJnbWlpLXJ4aWQKcmdtaWktdHhpZCAtIFdoZW4gdGhlcmUgaXMgYW4gZXh0cmEgbG9uZyBS
WCBjbG9jayBsaW5lIG9uIHRoZSBQQ0IsIGJ1dCBub3QKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0aGUgVFggY2xvY2sgbGluZSwgeW91IHdvdWxkIHVzZSByZ21paS10eGlkCgpSZWdhcmRzLAoK
TmluYWQKCj4KPiBQbGVhc2UgZG91YmxlIGNoZWNrIG15IGxvZ2ljLCBqdXN0IHRvIG1ha2Ugc3Vy
ZSBpdCBpcyBjb3JyZWN0LiBJZiBpCj4gaGF2ZSBpdCBjb3JyZWN0LCBpdCBzaG91bGQgYmUgYmFj
a3dhcmRzIGNvbXBhdGlibGUuIFRoZSBvbmUgZmVhdHVyZQo+IHlvdSBsb29zZSBvdXQgb24gaXMg
d2hlbiB0aGUgYm9vdGxvYWRlciBzZXRzIHRoZSB3cm9uZyBkZWxheXMgYW5kIHlvdQo+IHdhbnQg
cGh5LW1vZGUgdG8gYWN0dWFsbHkgb3ZlcnJpZGUgaXQuCj4KPiBXaGVuIEFTVDI3MDAgY29tZXMg
YWxvbmcsIHlvdSBjYW4gc2tpcCBhbGwgdGhpcywgZ2V0IGl0IHJpZ2h0IGZyb20gdGhlCj4gc3Rh
cnQgYW5kIG5vdCBuZWVkIHRoaXMgd29ya2Fyb3VuZC4KPgo+IAlBbmRyZXcKPgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZl
bG9wZXIK
