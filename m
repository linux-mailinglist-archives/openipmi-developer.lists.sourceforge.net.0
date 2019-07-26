Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C480675DDD
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jul 2019 06:37:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hqryk-0006qG-Do; Fri, 26 Jul 2019 04:37:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=4110ee0153=kamlakantp@marvell.com>)
 id 1hqrye-0006q0-7r
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 04:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xGs+XE0q2AaJ5mVU6cWbF+oboBvC8vhgvRfR+eQGdiU=; b=edEHFHbiK+zIA0kB4j5aBYxJEE
 8h8okk9M5bscslOnCWlLEH3jXyau6c3aWsQvgYEE/itp9zNgYQ8gs5kcexgSNog44lg/h8ZPtwmeN
 52fhYhR4YjZLpT+pdBbhO7igxfZJnrWXHMZKK/wOety7QqjO1/s2/yYghHjPpN7t0LHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xGs+XE0q2AaJ5mVU6cWbF+oboBvC8vhgvRfR+eQGdiU=; b=J99ofIr2lEdBtYqM7pSDIQTxLA
 Gd/tnYkG0SaBx5RwkiVl0uXGub0DWog/M0S39rDY0PRxPe4FG2LuD/KAjZP1tk2PPWkswk7dw9uyq
 2JXq90Q14NYFMLWFsw/9v86gKiA+5jUqje+BBUjy7lS3ItSv7ElZkft/GucR6Kzop5Tg=;
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqryb-00GbJX-K3
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 04:37:08 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6Q4EoPm020504; Thu, 25 Jul 2019 21:18:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=xGs+XE0q2AaJ5mVU6cWbF+oboBvC8vhgvRfR+eQGdiU=;
 b=ikn88+KXEEU/j6q4deBrjg38AiQgcBoZrD3v2XjFWa0A6INOFs9SiBy28I8rwVVBufog
 ez4oCvNcy7QxmIKQZSkKuDFj4VgMj0bRGuBnZGDbgWw/1JJCEi47oB7Qg05SsnZWlqiZ
 /IN30PNzfKjfYtTCaDDXaqGrL9/JRFlhhoqAxAJZv9aCXvGva9rLMCx6cvNBphuYpx1V
 q6XSRBhbXOtLXI16+Cm2GbcR1DAjSb2rhsrTGVmrzRUs6mm2bVXSE7aClmLOp1X10NXc
 jOMIknpQNS+F695YJ3NV5nR5ZVqqApwxqUtS1kNFTZk/6s2ReOoC5pZtbUd59qywniRG gw== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tx61rn2k7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 25 Jul 2019 21:18:04 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 25 Jul
 2019 21:18:03 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.56) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 25 Jul 2019 21:18:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ol9jqwfi/wCh4rqruWgkdismiriTx4P61mK/6VWjCKLiB7wUcfWZcChRz/OPKN0LzdPYFAPbDHRuBcDFCjjHUTzegSItI/osuNX9cRmjgGXTUAhdQHrGVwvyAgDzRhSYQlhVGWdKr+qrhJKBzqLFM4nnkSeZ0iy2Poe573dlb2o4qjejehTrkW/l7NeKxbkuVZDuKY9ZAWXMemvVXH4llhdyt09/N30eoSAxC4OomlwIAkLmgJQm1jrmwhH0IO/xkvtLSG5HuoA3XofhHUmYS15elqivAI52E5oQIs+6zzOFs/ldAldjqtYz+Ts9wGu8E09v4HxyA39e3jX7S84nrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xGs+XE0q2AaJ5mVU6cWbF+oboBvC8vhgvRfR+eQGdiU=;
 b=BSO/k2SzZdi4R0+aKpbt+a8hnFLILfstLh3dPVfMsO9DqawlDcC3fgLOYvHMbrZKTStRWHrZZX+9xmRQq0qH7Pg/Vqdbwi9e6kcmpQPzvvrd4RFDDhbGdyVDQ52DPbEpmGxjJEwy8pulSrepdcUC09yI651jdxkXtfwyhA4exo6HjZBE+IlkWsnw/nV3L6/x7810/y4w6HyRbLd0jLyUyGFOrnDtpjScuucjbGcUfjl1Rizm0BKXCeb6ZfUDADmjqHq/9+REq6J3I9TzOgPpbZ1hWY3zHPdTqOXreCu/j6gMT1TJzzTMIJjrhSNawxiGxBwEaIWQf5OvQx68/AZm6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xGs+XE0q2AaJ5mVU6cWbF+oboBvC8vhgvRfR+eQGdiU=;
 b=RR2DQ5XGFLRm9bs1fqXxg8z51yvMrlJEaBgStxbTyNuuDpx4mMzfKHWTVStfTDkz2NvYBIwGfVgvwWZBsLYB2JqEy9WmVOjjRVgSLIs+07XE0vtv0u1Zk2zLrhup4Cl6DnHCqWZx1zD93JtUydyr6BlFVmERPb+1MisuDIqSUuM=
Received: from MN2PR18MB3168.namprd18.prod.outlook.com (10.255.236.89) by
 MN2PR18MB2639.namprd18.prod.outlook.com (20.179.82.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Fri, 26 Jul 2019 04:18:01 +0000
Received: from MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::4464:8aa:2f2a:d8fa]) by MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::4464:8aa:2f2a:d8fa%6]) with mapi id 15.20.2094.017; Fri, 26 Jul 2019
 04:18:01 +0000
From: Kamlakant Patel <kamlakantp@marvell.com>
To: Corey Minyard <minyard@acm.org>
Thread-Topic: [PATCH RFC] ipmi_ssif: avoid registering duplicate ssif interface
Thread-Index: AQHVPLnxuM+NJqd4I0+fmISEGOzsBKbaSGCAgAIQUoA=
Date: Fri, 26 Jul 2019 04:18:01 +0000
Message-ID: <20190726041743.GA3701@dc5-eodlnx05.marvell.com>
References: <1563379709-19758-1-git-send-email-kamlakantp@marvell.com>
 <20190724204649.GA5134@minyard.net>
In-Reply-To: <20190724204649.GA5134@minyard.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR17CA0010.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::23) To MN2PR18MB3168.namprd18.prod.outlook.com
 (2603:10b6:208:162::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24f171db-a766-44cc-446f-08d711803f87
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2639; 
x-ms-traffictypediagnostic: MN2PR18MB2639:
x-microsoft-antispam-prvs: <MN2PR18MB26396F700438F2445398F394D2C00@MN2PR18MB2639.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(376002)(136003)(366004)(346002)(39850400004)(396003)(189003)(199004)(25786009)(6512007)(316002)(2906002)(6246003)(76176011)(53936002)(229853002)(71190400001)(52116002)(71200400001)(4326008)(6486002)(6116002)(66946007)(66476007)(64756008)(66556008)(66446008)(33656002)(6916009)(8676002)(66066001)(7736002)(102836004)(107886003)(8936002)(3846002)(99286004)(86362001)(6506007)(386003)(14444005)(54906003)(478600001)(1076003)(476003)(486006)(256004)(14454004)(11346002)(446003)(5660300002)(6436002)(68736007)(186003)(26005)(305945005)(81166006)(81156014)(21314003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2639;
 H:MN2PR18MB3168.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bY0mxVTfnz5xk2G1OlICh+WN4rNT7I+FT9YZVKRh82AVR3KewKvOWyYDFVXvE+0YkdHR5+q+Y+zFkmdddmPRUXTTDPof6YFtfCPV7SvlzKrGNSsY2F9pHKp2/Y0HeN7AVkgDy9543tNoiwjw2OWDh2P9KmfCf3IHJPQCJr7uO8/j+mDpT3prKw/jPUCOAc2izcgCU91MdYVnlF5mmiKSSTHsXozGHBWDdlcDHRUhVgpTKxXOh9stvY8YU6bW7Mkd9TETBG3hYxCm+xSRaiwRZjglR/NRWpTFYuoes4NFMosKAEc3k1RwFQR1n4defBEo5/du+TYOEieXEy5Brwikr+l/73F6+tQQcEZoqEkA6HIO2g4Q/d4yl5ReXc66l9+65Lp61lqYkmKXn9p5HP+CjrdUqw6z6VKa6QRmX4/1FjU=
Content-ID: <CBD919727A45D64884BE0F19F430B9AE@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 24f171db-a766-44cc-446f-08d711803f87
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 04:18:01.6869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kamlakantp@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2639
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-26_03:2019-07-26,2019-07-26 signatures=0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marvell.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqryb-00GbJX-K3
Subject: Re: [Openipmi-developer] [PATCH RFC] ipmi_ssif: avoid registering
 duplicate ssif interface
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
Cc: "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>, Ganapatrao
 Kulkarni <gkulkarni@marvell.com>, George Cherian <gcherian@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jul 24, 2019 at 03:46:49PM -0500, Corey Minyard wrote:
Hi Corey,
> On Wed, Jul 17, 2019 at 04:08:59PM +0000, Kamlakant Patel wrote:
> 
> In general I think this is ok.  A few issues, though:
> 
> > It is possible that SSIF interface entry is present in both DMI and ACPI tables.
> > In SMP systems, in such cases it is possible that ssif_probe could be called
> > simultaneously from i2c interface (from ACPI) and from DMI on different CPUs at
> > kernel boot. Both try to register same SSIF interface simultaneously and result
> > in race.
> > 
> > In such cases where ACPI and SMBIOS both IPMI entries are available, we need
> > to prefer ACPI over SMBIOS so that ACPI functions work properly if they use IPMI.
> > So, if we get an ACPI interface and have already registered an SMBIOS at the same
> > address, we need to remove the SMBIOS one and add the ACPI one.
> 
> Text in the header needs to be <=75 characters wide, per kernel style.
> 
> > 
> > Log:
> > [   38.774743] ipmi device interface
> > [   38.805006] ipmi_ssif: IPMI SSIF Interface driver
> > [   38.861979] ipmi_ssif i2c-IPI0001:06: ssif_probe CPU 99 ***
> > [   38.863655] ipmi_ssif 0-000e: ssif_probe CPU 14 ***
> > [   38.863658] ipmi_ssif: Trying SMBIOS-specified SSIF interface at i2c address 0xe, adapter xlp9xx-i2c, slave address 0x0
> > [   38.869500] ipmi_ssif: Trying ACPI-specified SSIF interface at i2c address 0xe, adapter xlp9xx-i2c, slave address 0x0
> > [   38.914530] ipmi_ssif: Unable to clear message flags: -22 7 c7
> > [   38.952429] ipmi_ssif: Unable to clear message flags: -22 7 00
> > [   38.994734] ipmi_ssif: Error getting global enables: -22 7 00
> > [   39.015877] ipmi_ssif 0-000e: IPMI message handler: Found new BMC (man_id: 0x00b3d1, prod_id: 0x0001, dev_id: 0x20)
> > [   39.377645] ipmi_ssif i2c-IPI0001:06: IPMI message handler: Found new BMC (man_id: 0x00b3d1, prod_id: 0x0001, dev_id: 0x20)
> > [   39.387863] ipmi_ssif 0-000e: IPMI message handler: BMC returned incorrect response, expected netfn 7 cmd 42, got netfn 7 cmd 1
> > ...
> > [NOTE] : Added custom prints to explain the problem.
> > 
> > In the above log ssif_probe is executed simultaneously on two different CPUs.
> > 
> > This patch fixes this issue in following way:
> > 1. Adds ACPI entry also to the 'ssif_infos' list.
> > 2. Checks the list if SMBIOS is already registered, removes it and adds ACPI.
> > 3. If ACPI is already registered, it ignores SMBIOS.
> > 4. Adds mutex lock throughout the probe process to avoid race.
> > 
> > Signed-off-by: Kamlakant Patel <kamlakantp@marvell.com>
> > ---
> >  drivers/char/ipmi/ipmi_ssif.c | 89 +++++++++++++++++++++++++++++++++--
> >  1 file changed, 84 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> > index 8b5aec5430f1..763279b5e17c 100644
> > --- a/drivers/char/ipmi/ipmi_ssif.c
> > +++ b/drivers/char/ipmi/ipmi_ssif.c
> > @@ -185,6 +185,7 @@ struct ssif_addr_info {
> >  	char *adapter_name;
> >  	int debug;
> >  	int slave_addr;
> > +	bool is_probed;
> >  	enum ipmi_addr_src addr_src;
> >  	union ipmi_smi_info_union addr_info;
> >  	struct device *dev;
> > @@ -1312,6 +1313,7 @@ static int ssif_remove(struct i2c_client *client)
> >  
> >  	list_for_each_entry(addr_info, &ssif_infos, link) {
> >  		if (addr_info->client == client) {
> > +			addr_info->is_probed = 0;
> >  			addr_info->client = NULL;
> >  			break;
> >  		}
> > @@ -1414,7 +1416,8 @@ static int strcmp_nospace(char *s1, char *s2)
> >  	return 0;
> >  }
> >  
> > -static struct ssif_addr_info *ssif_info_find(unsigned short addr,
> > +static struct ssif_addr_info *ssif_info_find(struct i2c_client *client,
> > +					     unsigned short addr,
> >  					     char *adapter_name,
> >  					     bool match_null_name)
> >  {
> > @@ -1423,6 +1426,13 @@ static struct ssif_addr_info *ssif_info_find(unsigned short addr,
> >  restart:
> >  	list_for_each_entry(info, &ssif_infos, link) {
> >  		if (info->binfo.addr == addr) {
> > +			if (!info->client && info->addr_src == SI_SMBIOS &&
> > +			    client) {
> > +				info->client = client;
> > +				info->adapter_name = kstrdup(client->adapter->name,
> > +								GFP_KERNEL);
> > +			}
> > +
> >  			if (info->adapter_name || adapter_name) {
> >  				if (!info->adapter_name != !adapter_name) {
> >  					/* One is NULL and one is not */
> > @@ -1592,12 +1602,73 @@ static void test_multipart_messages(struct i2c_client *client,
> >  	return;
> >  }
> >  
> > +static void ssif_remove_dup(struct i2c_client *client)
> > +{
> > +	struct ssif_info *ssif_info = i2c_get_clientdata(client);
> > +
> > +	if (!ssif_info)
> > +		return;
> > +	ipmi_unregister_smi(ssif_info->intf);
> > +	kfree(ssif_info);
> > +}
> 
> Space here.
> 
> >  /*
> >   * Global enables we care about.
> >   */
> >  #define GLOBAL_ENABLES_MASK (IPMI_BMC_EVT_MSG_BUFF | IPMI_BMC_RCV_MSG_INTR | \
> >  			     IPMI_BMC_EVT_MSG_INTR)
> >  
> > +static int ssif_check_present(struct ssif_addr_info *info,
> > +			      struct i2c_client *client)
> 
> ssif_client_match() or something like that would probably be a better
> name here.
Sure, I will name it like that.
> 
> > +{
> > +	if (!strcmp(info->adapter_name, client->adapter->name) &&
> > +		   (info->binfo.addr == client->addr))
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> > +/*
> > + * Prefer ACPI over SMBIOS, if both are available.
> > + * So if we get an ACPI interface and have already registered a SMBIOS
> > + * interface at the same address, remove the SMBIOS and add the ACPI one.
> > + */
> > +static int ssif_is_registered(struct i2c_client *client,
> > +			      struct ssif_info *ssif_info)
> > +{
> 
> It would be better if is_xxx() functions don't have side effects.  That
> can surprise the user.  A different function name would probably be
> better.
I will try to put a better function name here.
> 
> > +	struct ssif_addr_info *info;
> > +
> > +	list_for_each_entry(info, &ssif_infos, link) {
> > +		if (info->is_probed) {
> > +			if (ssif_check_present(info, client)) {
> > +				if (info->addr_src == SI_ACPI) {
> > +					return -EEXIST;
> > +				} else if (ssif_info->addr_source == SI_ACPI &&
> > +					   info->addr_src == SI_SMBIOS) {
> > +					dev_info(&client->dev,
> > +						 "Removing %s-specified SSIF interface in favor of ACPI\n",
> > +						 ipmi_addr_src_to_str(info->addr_src));
> > +					ssif_remove_dup(info->client);
> > +				}
> > +			}
> > +		} else if (ssif_info->addr_source == SI_SMBIOS) {
> > +			info->is_probed = true;
> 
> I'm trying to figure out the purpose of is_probed.  Wouldn't
> checkng client be good enough?
> 
> Then you don't need all this, and the check_present call
> could just return false if client is not set.
I had added is_probed to keep track of probed clients, but as you
suggested checking the client should be good enough. I will try to
implement in this way and send an updated patch.
> 
> > +			return 0;
> > +		}
> > +	}
> > +
> > +	info = kzalloc(sizeof(*info), GFP_KERNEL);
> > +	if (!info)
> > +		return -ENOMEM;
> > +	info->addr_src = ssif_info->addr_source;
> > +	info->is_probed = true;
> > +	info->client = client;
> > +	info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
> > +	info->binfo.addr = client->addr;
> > +	list_add_tail(&info->link, &ssif_infos);
> 
> You are duplicating a bunch of code here.  Make a function.
> 
> Also, hard-coded additions may be an issue here, as they are
> not SMBIOS, but they already should have addr_info items.
> 
> I really should rename ssif_infos to ssif_addr_infos and
> document it better :(.
> 
> I'm wishing there was a simpler way to do this, but I don't
> see one.
> 
Thanks for your comments and suggestions on this.
I will send an updated patch.

Thanks,
Kamlakant Patel

> -corey
> 
> > +
> > +	return 0;
> > +}
> > +
> >  static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
> >  {
> >  	unsigned char     msg[3];
> > @@ -1609,6 +1680,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
> >  	u8		  slave_addr = 0;
> >  	struct ssif_addr_info *addr_info = NULL;
> >  
> > +	mutex_lock(&ssif_infos_mutex);
> >  	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
> >  	if (!resp)
> >  		return -ENOMEM;
> > @@ -1620,8 +1692,8 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
> >  	}
> >  
> >  	if (!check_acpi(ssif_info, &client->dev)) {
> > -		addr_info = ssif_info_find(client->addr, client->adapter->name,
> > -					   true);
> > +		addr_info = ssif_info_find(client, client->addr,
> > +					   client->adapter->name, true);
> >  		if (!addr_info) {
> >  			/* Must have come in through sysfs. */
> >  			ssif_info->addr_source = SI_HOTMOD;
> > @@ -1633,7 +1705,13 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
> >  			slave_addr = addr_info->slave_addr;
> >  		}
> >  	}
> > -
> > +	/* Check if SSIF is already registered */
> > +	if (ssif_is_registered(client, ssif_info)) {
> > +		kfree(resp);
> > +		kfree(ssif_info);
> > +		mutex_unlock(&ssif_infos_mutex);
> > +		return 0;
> > +	}
> >  	slave_addr = find_slave_address(client, slave_addr);
> >  
> >  	dev_info(&client->dev,
> > @@ -1846,6 +1924,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
> >  		kfree(ssif_info);
> >  	}
> >  	kfree(resp);
> > +	mutex_unlock(&ssif_infos_mutex);
> >  	return rv;
> >  
> >  out_remove_attr:
> > @@ -1878,7 +1957,7 @@ static int new_ssif_client(int addr, char *adapter_name,
> >  	int rv = 0;
> >  
> >  	mutex_lock(&ssif_infos_mutex);
> > -	if (ssif_info_find(addr, adapter_name, false)) {
> > +	if (ssif_info_find(NULL, addr, adapter_name, false)) {
> >  		rv = -EEXIST;
> >  		goto out_unlock;
> >  	}
> > -- 
> > 2.17.1
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
