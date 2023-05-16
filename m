Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C6704C7D
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 May 2023 13:40:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pyt28-00071L-C9;
	Tue, 16 May 2023 11:40:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schnelle@linux.ibm.com>) id 1pyt26-00071D-5H
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 11:39:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YkhRQbWj+jTt2Ue3u9TW20D+7Bv+YjDbhfGt4q6glLc=; b=E5Wlm40OOfgOkBSMqg3y8+1UP2
 +HL1fJJXXsUPvsZpoi6YOU4IbIpp6U2+F1A1bSqdedYfUz7XVkGGFh5HQrZ3BEBvtM5+J5ujYmiN+
 LTJLHLW3KVsKE1eHPdjxs567zUFQdfw2W0aPqhQEhxYfQClf7s9IiZ3vNhFrc+NXXilA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YkhRQbWj+jTt2Ue3u9TW20D+7Bv+YjDbhfGt4q6glLc=; b=R+/tcY9eqV7ORl8g+i+pjXDu48
 zNEE/a0+PGdYSHSelCjj/o+FYlDcLtPMRSrG/ciUamT5qUVuway2DFGpWCJNg+f3X87uzmpZcc2xv
 TxYGd7FUd8j592ZPH2rZrbBrzhYeaeGmp1M4eGMFytudRshW/wh/+ebf2ZIghID4tgyg=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pyt1z-009UCq-Sn for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 11:39:58 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34GBcXVQ020880; Tue, 16 May 2023 11:39:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=YkhRQbWj+jTt2Ue3u9TW20D+7Bv+YjDbhfGt4q6glLc=;
 b=cdIxkgcMMZS1xBXzAgbxJRLIs/g6eEN/67NggdAKbmFAU7k6/CYtGXCfmRZS/rZSkG5p
 4MGVz2Qfp1JqT4pL4zBGVEsPODLwNux4CQcUYGkHl555az82/pIpzupitbws8z6fMO8o
 bINaR6tJFhaymVnIWqSnrH5Z9y3L9UwN13xzHrjK3b0I82BN0X7mXDaFFfJZWBLp8VDI
 FX/vH9Xc4oq5I7W0u+T3rNxRPBIjSPBkHvyVJL0yLKYZni34JjPKyvvq2tDe8Ix9IqQ6
 449JNsG95QlxspP308eUDEKPk9hp2E/Isw+FEabZUpuSoSh5l3auzzVrfrREKb4BBRq5 9Q== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qm7jp2tu6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 May 2023 11:39:32 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34GBcmcb021497;
 Tue, 16 May 2023 11:39:31 GMT
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.107])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qm7jp2tr9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 May 2023 11:39:31 +0000
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
 by ppma03fra.de.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34G9c7Zi031636;
 Tue, 16 May 2023 11:39:28 GMT
Received: from smtprelay03.fra02v.mail.ibm.com ([9.218.2.224])
 by ppma03fra.de.ibm.com (PPS) with ESMTPS id 3qj2651b5b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 May 2023 11:39:28 +0000
Received: from smtpav05.fra02v.mail.ibm.com (smtpav05.fra02v.mail.ibm.com
 [10.20.54.104])
 by smtprelay03.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 34GBdQWU57934228
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 May 2023 11:39:26 GMT
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0A07B20040;
 Tue, 16 May 2023 11:39:26 +0000 (GMT)
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6C8A32004B;
 Tue, 16 May 2023 11:39:25 +0000 (GMT)
Received: from [9.152.212.232] (unknown [9.152.212.232])
 by smtpav05.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 16 May 2023 11:39:25 +0000 (GMT)
Message-ID: <97b01d4cefb0310c6956bac198e564b212fb93ca.camel@linux.ibm.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue, 16 May 2023 13:39:25 +0200
In-Reply-To: <60e9d000-0793-1421-3045-fdb74976373c@molgen.mpg.de>
References: <20230516110038.2413224-1-schnelle@linux.ibm.com>
 <20230516110038.2413224-4-schnelle@linux.ibm.com>
 <60e9d000-0793-1421-3045-fdb74976373c@molgen.mpg.de>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: NkBegRieKaiZe8tSrIXbhLD0l1pYOvlA
X-Proofpoint-GUID: 8VH3GLGz6RvnThNaF42HrH7TLEJAxoth
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-16_04,2023-05-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 mlxlogscore=990
 adultscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305160098
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 2023-05-16 at 13:06 +0200, Paul Menzel wrote: > Dear
    Niklas, > > > Am 16.05.23 um 12:59 schrieb Niklas Schnelle: > > [â€¦] > >
    There is a small typo in the commit message summary/title: impi â [...] 
 
 Content analysis details:   (-0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [148.163.156.1 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pyt1z-009UCq-Sn
Subject: Re: [Openipmi-developer] [PATCH v4 03/41] char: impi,
 tpm: depend on HAS_IOPORT
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
From: Niklas Schnelle via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: Corey Minyard <cminyard@mvista.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pci@vger.kernel.org,
 Peter Huewe <peterhuewe@gmx.de>, linux-arch@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCAyMDIzLTA1LTE2IGF0IDEzOjA2ICswMjAwLCBQYXVsIE1lbnplbCB3cm90ZToKPiBE
ZWFyIE5pa2xhcywKPiAKPiAKPiBBbSAxNi4wNS4yMyB1bSAxMjo1OSBzY2hyaWViIE5pa2xhcyBT
Y2huZWxsZToKPiAKPiBb4oCmXQo+IAo+IFRoZXJlIGlzIGEgc21hbGwgdHlwbyBpbiB0aGUgY29t
bWl0IG1lc3NhZ2Ugc3VtbWFyeS90aXRsZTogaW1waSDihpIgaXBtaS4KPiAKPiAKPiBLaW5kIHJl
Z2FyZHMKPiAKPiBQYXVsCj4gCgpHb29kIGNhdGNoLiBJIGZpeGVkIGl0IGxvY2FsbHkgbm93LiBM
ZXQncyBzZWUgaWYgd2UgbmVlZCBhIHY1IGFueXdheSBvcgppZiB0aGlzIGNhbiBiZSBjaGFuZ2Vk
IG9uIGFwcGx5aW5nIHRoZSBwYXRjaC4KClRoYW5rcywKTmlrbGFzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
