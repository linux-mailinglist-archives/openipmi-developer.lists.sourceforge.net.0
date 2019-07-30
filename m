Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EB67B5AD
	for <lists+openipmi-developer@lfdr.de>; Wed, 31 Jul 2019 00:24:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsaXV-0007l3-Cs; Tue, 30 Jul 2019 22:24:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1hsaXT-0007gW-9k
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 22:24:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+xMqJVU1tfhPbgq8fFtT+U0JOhMvo3WycgJmd2+wlZ8=; b=Y2WDpldKc5gUtIuXZWL8x5hnx/
 6JUsP1jLvO4z9yyj1GmvKJu4+lUWovjisnWCNSp3ZRGcwHC/TQ5gfPtjXunRcqafk3ywHL/6pY0ez
 HEEsAX0gB6vJY8e4ztE+H/Xn/a5BNJzorE+5Y8T5ypxEWFtd8nKhyHH8pzTOUE5bBllA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+xMqJVU1tfhPbgq8fFtT+U0JOhMvo3WycgJmd2+wlZ8=; b=Q64VyUuT+c/h9mzEcmai6jidc5
 qLISAeg2mklvB9erk1kKtCs0D20XF9dl66fBiOEPnKf4fwEJvAO7Sx9zSMZbEROVD0tNa8NDcLVQo
 MuwIrxmAANRkQJc6JGb0uUG/5kubgIcmwOrKdmTSBWWHv8PoagkkAesnIrbHcgHkH7Wo=;
Received: from mail-eopbgr30074.outbound.protection.outlook.com ([40.107.3.74]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hsaXJ-0058sw-0K
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 22:24:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RnhKVi5DW3VvkuWrX2v569cYZ/TbezCWRxBff0qDHQpdNhNpLUvwIs7kLDtv2CPlZEEi4jb2fscfw/d97Km1tulGoNAKj3m/6K4CyZ9e8fCHSHLPB8cykjhl9CP9tZiBpa0o3qQghTHPcAHDehszmYsBVqUebrxs1u5lhPLYBRZst5lYAw5Nxnqq3R1Suc1bn4n6F02Ze9FAeKev2Q4DPuOB7WO/ZcJwssmOjZyVzNXzbOnPNkuywBrcG1lvREtrOPbXEH94G9K1f9fMcXR/hNLdC+mR59Ygx+x/gvVZlRFznhl1UHU4kkziItN2gkXSKU3GliKi9n7y27c4NTX+7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+xMqJVU1tfhPbgq8fFtT+U0JOhMvo3WycgJmd2+wlZ8=;
 b=IVGIf3N7Im5MjDzBqh4/V1BpHAoPch3pZ1qtRj5aqrL68AFn5JVSs3tOvb+Jx7oOloEY7uUT8hWv+1vAZnjSgsCalsYmWnXDjgXSoucWuWmGqayWL2+FBmA8fHHzOnEySwgunuDuTI7XoCKovtJ3My0qwPVLMC2lo4NayDIwhaWSbYRYdva9the62ZhsU+RW1PL1QWnwu2IZLpCwEIIkK/pdyIqK1BUshpHh3TZEQDyDU6ttTCa+lCGDTol5khRUBDrbgxssnI7iV10xIcGSBK5g1U7YKOLa9r8bCflsO8035DNfTA+hKX2/EvgCEyHLkoxFZW8gcB7Ogt78quY0qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+xMqJVU1tfhPbgq8fFtT+U0JOhMvo3WycgJmd2+wlZ8=;
 b=lZAJ6FXN6RSZqaOHH6Qlbpk8gWV0bY5r2HGlUPBej+4JhQUx4ZvRK6xglLcKArbbXD26/lrnCc+hqdUvlU09kD/6BeEX0BLxCXg5tYbMMtSA7yyPoY0e5Z3yAhNLe06NyUsE/Yq/Q8v+i5yH/B/PbYbGcnz/yQU1H0xLwwheOjc=
Received: from DB8PR05MB5980.eurprd05.prod.outlook.com (20.179.10.86) by
 DB8PR05MB6107.eurprd05.prod.outlook.com (20.179.12.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 30 Jul 2019 20:50:40 +0000
Received: from DB8PR05MB5980.eurprd05.prod.outlook.com
 ([fe80::104d:24a5:adff:9c83]) by DB8PR05MB5980.eurprd05.prod.outlook.com
 ([fe80::104d:24a5:adff:9c83%3]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 20:50:40 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [Openipmi-developer] [PATCH] Cleanups for the ipmb code
Thread-Index: AQHVRZMhKZdGP5YCikuCx6OPlFQMPKbjnaCAgAAFnmA=
Date: Tue, 30 Jul 2019 20:50:40 +0000
Message-ID: <DB8PR05MB59803E777CC9A1C2DD1D9DB3DADC0@DB8PR05MB5980.eurprd05.prod.outlook.com>
References: <20190728222338.11391-1-minyard@acm.org>
 <20190730202137.GA5001@minyard.net>
In-Reply-To: <20190730202137.GA5001@minyard.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e58310d8-0d5c-4e47-ef29-08d7152f950a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR05MB6107; 
x-ms-traffictypediagnostic: DB8PR05MB6107:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB8PR05MB61076FDEC1A4E3024286C31ADADC0@DB8PR05MB6107.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(366004)(189003)(199004)(13464003)(71190400001)(8936002)(2351001)(81166006)(81156014)(71200400001)(8676002)(966005)(1730700003)(66476007)(66556008)(14454004)(86362001)(4326008)(5660300002)(76176011)(25786009)(7696005)(99286004)(74316002)(68736007)(316002)(7736002)(305945005)(256004)(14444005)(6116002)(3846002)(30864003)(52536014)(478600001)(6246003)(53936002)(2906002)(53946003)(80792005)(446003)(33656002)(229853002)(561944003)(186003)(6506007)(102836004)(53546011)(486006)(54906003)(9686003)(6916009)(5640700003)(64756008)(476003)(6306002)(66446008)(11346002)(6436002)(45080400002)(76116006)(66946007)(26005)(2501003)(66066001)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR05MB6107;
 H:DB8PR05MB5980.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0LxdZNMJqndv7kDtogJoKvZG144kl7MilwfbTwpbOPi6Ofmg8LQgFj+FarH6EdFGRuSuB2dUZ2bLnWQVaHgTi+lTkdWl2Hk5xBun4z+trikUs+fiBiqZN18ggSEd3gnd9IV9j/+x5nV5mtpad22COlkDX8GnfsnH7f2DQq/E7PHwxfey+3r8GyY32U/iy+abqGf9c++vbw/lG1PnirzHxQLrbbQKv5O1/k+4WDYKNEdAbX/ByPs4JTWwQGYANt2M0QchxXYUtX7cuZYcOv3C6JxSk3O9LXuan1ZTHi4Dcjgw0KceWVNp0NP4VtxNRDmsNIhqfy59k36dlLhUOpnbXed4s0Y8Ne/MaIaUsUVsiD0/pgnPkQ+BVrrAvMLytiNxVYP6+G9BrRWRiAHSFVTTlqOpZnO78D+g3MX6hXMm6KI=
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e58310d8-0d5c-4e47-ef29-08d7152f950a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 20:50:40.2513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Asmaa@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR05MB6107
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: outlook.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.3.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hsaXJ-0058sw-0K
Subject: Re: [Openipmi-developer] [PATCH] Cleanups for the ipmb code
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
Cc: Corey Minyard <cminyard@mvista.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

I am in the process of testing it. I tried to integrate as many of your changes as I can. I have some comments though:

1) We cannot remove the prim_ipmb_in_cfg_file variable as it enables the lan.conf file to use other channels than channel 0 as IPMB. If you remove it, OpenIPMI program will not work.
2) There is a small bug in the ipmb_ipmi.c file, in the ipmb_read_config function. You have removed the line which retrieves the string for the device file. An example was given in the lan.conf file:
ipmb 2 ipmb_dev_int /dev/ipmb-2

By removing the line: tok=mystrtok, we do not get the string "/dev/ipmb-2". This is mandatory as this is the format of the device file created by the linux driver ipmb_dev_int.

As of now, I have removed the codec struct and any dependency on the serial file (as you suggested) and have tested it successfully. I am adding all your other changes progressively. I have tried this patch as it is and it was not working. I will post a new patch for review soon.

Thank you for your feedback and help!
Asmaa


-----Original Message-----
From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
Sent: Tuesday, July 30, 2019 4:22 PM
To: Asmaa Mnebhi <Asmaa@mellanox.com>
Cc: Corey Minyard <cminyard@mvista.com>; openipmi-developer@lists.sourceforge.net
Subject: Re: [Openipmi-developer] [PATCH] Cleanups for the ipmb code

Any comments on this?  I can't test it easily, and it's really a proposal, not an edict.  I think this is better, but there may be things I missed.

-corey

On Sun, Jul 28, 2019 at 05:23:38PM -0500, minyard@acm.org wrote:
> From: Corey Minyard <cminyard@mvista.com>
> 
> Create an ipmb data structure and don't re-use all the serial server 
> data structures and code.  This reduces and simplifies the code quite 
> a bit and let's us pass the ipmb device in a way that allows more than 
> one ipmb device and doesn't use global data.
> 
> Also get rid of the recv_msg stuff, as with the new changes it's no 
> longer necessary as we just pass the data straight in.
> 
> Get rid of the prim_ipmb_in_cfg_file entry in the channel, as it 
> didn't really do anything.
> 
> Signed-off-by: Corey Minyard <cminyard@mvista.com>
> ---
> I apologize, I really didn't spend enough time looking at your changes.
> The reuse of the serial data structures and code wasn't really 
> appropriate, it added extra unnecessary complexity and coupling.  So I 
> reworked it some, hopefully this is acceptable.
> 
> -corey
> 
>  lanserv/OpenIPMI/ipmbserv.h |  21 ++++-
>  lanserv/OpenIPMI/serv.h     |   5 --
>  lanserv/bmc.c               |   4 +-
>  lanserv/ipmb_ipmi.c         | 163 +++++++++++++-----------------------
>  lanserv/ipmi_sim.c          |  59 +++++++------
>  5 files changed, 111 insertions(+), 141 deletions(-)
> 
> diff --git a/lanserv/OpenIPMI/ipmbserv.h b/lanserv/OpenIPMI/ipmbserv.h 
> index 938ace3..5c067a0 100644
> --- a/lanserv/OpenIPMI/ipmbserv.h
> +++ b/lanserv/OpenIPMI/ipmbserv.h
> @@ -53,10 +53,27 @@
>  #define __IPMBSERV_H
>  
>  #include <OpenIPMI/msg.h>
> -#include <OpenIPMI/serserv.h>
>  
> -typedef struct serserv_data_s ipmbserv_data_t;
> +typedef struct ipmbserv_data_s ipmbserv_data_t;
> +
> +struct ipmbserv_data_s {
> +    channel_t channel;
> +
> +    void (*send_out)(ipmbserv_data_t *si, unsigned char *data,
> +		     unsigned int data_len);
> +
> +    sys_data_t *sysinfo;
> +
> +    os_handler_t *os_hnd;
> +
> +    void *user_info;
> +
> +    char *ipmbdev;
> +    int fd;
> +};
>  
>  int ipmb_read_config(char **tokptr, sys_data_t *sys, const char 
> **errstr);
> +void ipmb_handle_data(ipmbserv_data_t *ipmb, uint8_t *data, unsigned 
> +int len); int ipmb_init(ipmbserv_data_t *ipmb);
>  
>  #endif /* __IPMBSERV_H */
> diff --git a/lanserv/OpenIPMI/serv.h b/lanserv/OpenIPMI/serv.h index 
> 3d40060..10f2fb0 100644
> --- a/lanserv/OpenIPMI/serv.h
> +++ b/lanserv/OpenIPMI/serv.h
> @@ -219,9 +219,6 @@ struct channel_s
>       */
>      int (*oem_intf_recv_handler)(channel_t *chan, msg_t *msg,
>  				 unsigned char *rdata, unsigned int *rdata_len);
> -
> -    /* Set to 1 if ipmb channel 0 is listed in the config file, 0 otherwise */
> -    int prim_ipmb_in_cfg_file;
>  };
>  
>  struct user_s
> @@ -412,8 +409,6 @@ struct sys_data_s {
>      int (*lan_channel_init)(void *info, channel_t *chan);
>      int (*ser_channel_init)(void *info, channel_t *chan);
>      int (*ipmb_channel_init)(void *info, channel_t *chan);
> -
> -    char ipmidev[15];
>  };
>  
>  static inline void
> diff --git a/lanserv/bmc.c b/lanserv/bmc.c index 264b4ae..e5434ee 
> 100644
> --- a/lanserv/bmc.c
> +++ b/lanserv/bmc.c
> @@ -613,8 +613,7 @@ ipmi_mc_enable(lmc_data_t *mc)
>  	    err = sys->lan_channel_init(sys->info, chan);
>  	else if (chan->medium_type == IPMI_CHANNEL_MEDIUM_RS232)
>  	    err = sys->ser_channel_init(sys->info, chan);
> -	else if ((chan->medium_type == IPMI_CHANNEL_MEDIUM_IPMB) &&
> -		((chan->channel_num != 0) || (chan->prim_ipmb_in_cfg_file)))
> +	else if (chan->medium_type == IPMI_CHANNEL_MEDIUM_IPMB)
>  	    err = sys->ipmb_channel_init(sys->info, chan);
>  	else 
>  	    chan_init(chan);
> @@ -805,7 +804,6 @@ ipmi_mc_alloc_unconfigured(sys_data_t *sys, unsigned char ipmb,
>      mc->ipmb_channel.protocol_type = IPMI_CHANNEL_PROTOCOL_IPMB;
>      mc->ipmb_channel.session_support = IPMI_CHANNEL_SESSION_LESS;
>      mc->ipmb_channel.active_sessions = 0;
> -    mc->ipmb_channel.prim_ipmb_in_cfg_file = 0;
>      mc->channels[0] = &mc->ipmb_channel;
>      mc->channels[0]->log = sys->clog;
>  
> diff --git a/lanserv/ipmb_ipmi.c b/lanserv/ipmb_ipmi.c index 
> 16914aa..72c3649 100644
> --- a/lanserv/ipmb_ipmi.c
> +++ b/lanserv/ipmb_ipmi.c
> @@ -55,33 +55,50 @@
>  #include <OpenIPMI/ipmbserv.h>
>  #include <OpenIPMI/ipmi_mc.h>
>  
> -#define	IPMIDEV_MAX_SIZE	15
> -
>  static void
> -raw_send(ipmbserv_data_t *ipmb, unsigned char *data, unsigned int 
> len)
> +ipmb_send(msg_t *imsg, ipmbserv_data_t *ipmb)
>  {
> +    unsigned char msg[(IPMI_SIM_MAX_MSG_LENGTH + 7) * 3];
> +    unsigned int msg_len;
> +
> +    msg[0] = imsg->len + 7;
> +    msg[1] = imsg->rs_addr;
> +    msg[2] = (imsg->netfn << 2) | imsg->rs_lun;
> +    msg[3] = -ipmb_checksum(msg + 1, 2, 0);
> +    msg[4] = imsg->rq_addr;
> +    msg[5] = (imsg->rq_seq << 2) | imsg->rq_lun;
> +    msg[6] = imsg->cmd;
> +    memcpy(msg + 7, imsg->data, imsg->len);
> +    msg_len = imsg->len + 7;
> +    msg[msg_len] = -ipmb_checksum(msg + 4, msg_len - 4, 0);
> +    msg_len++;
> +
>      if (ipmb->sysinfo->debug & DEBUG_RAW_MSG)
> -	debug_log_raw_msg(ipmb->sysinfo, data, len, "Raw serial send:");
> -    ipmb->send_out(ipmb, data, len);
> +	debug_log_raw_msg(ipmb->sysinfo, msg, msg_len, "Raw ipmb send:");
> +    ipmb->send_out(ipmb, msg, msg_len);
>  }
>  
> -/********************************************************************
> ***
> - *
> - * IPMB message
> - *
> - * According to the IPMI spec, the IPMB message size should never
> - * exceed 32 bytes. So it doesn't harm to set the max size of the
> - * recv_msg to 36 bytes.
> - *
> - 
> **********************************************************************
> */
> -struct ipmb_data {
> -    unsigned char   recv_msg[IPMI_SIM_MAX_MSG_LENGTH + 4];
> -    unsigned int    recv_msg_len;
> -    int             recv_msg_too_many;
> -};
> -
>  static void
> -ipmb_handle_msg(unsigned char *imsg, unsigned int len, 
> ipmbserv_data_t *ipmb)
> +ipmb_return_rsp(channel_t *chan, msg_t *imsg, rsp_msg_t *rsp) {
> +    ipmbserv_data_t *ser = chan->chan_info;
> +    msg_t msg;
> +
> +    msg.netfn = rsp->netfn;
> +    msg.cmd = rsp->cmd;
> +    msg.data = rsp->data;
> +    msg.len = rsp->data_len;
> +    msg.rq_lun = imsg->rs_lun;
> +    msg.rq_addr = imsg->rs_addr;
> +    msg.rs_lun = imsg->rq_lun;
> +    msg.rs_addr = imsg->rq_addr;
> +    msg.rq_seq = imsg->rq_seq;
> +
> +    ipmb_send(&msg, ser);
> +}
> +
> +void
> +ipmb_handle_data(ipmbserv_data_t *ipmb, uint8_t *imsg, unsigned int 
> +len)
>  {
>      msg_t msg;
>  
> @@ -119,59 +136,11 @@ ipmb_handle_msg(unsigned char *imsg, unsigned int len, ipmbserv_data_t *ipmb)
>      channel_smi_send(&ipmb->channel, &msg);  }
>  
> -static void
> -ipmb_handle_char(unsigned char ch, ipmbserv_data_t *ipmb) -{
> -    struct ipmb_data *info = ipmb->codec_info;
> -    unsigned int len = info->recv_msg_len;
> -
> -    if (ipmb->bind_fd == 0) {
> -	if (info->recv_msg_len != 0) {
> -	    ipmb_handle_msg(info->recv_msg, info->recv_msg_len, ipmb);
> -	    info->recv_msg_len = 0;
> -	}
> -	return;
> -    }
> -
> -    if (len >= sizeof(info->recv_msg))
> -	return;
> -
> -    info->recv_msg[len] = ch;
> -    info->recv_msg_len++;
> -}
> -
> -static void
> -ipmb_send(msg_t *imsg, ipmbserv_data_t *ipmb) -{
> -    unsigned char msg[(IPMI_SIM_MAX_MSG_LENGTH + 7) * 3];
> -    unsigned int msg_len;
> -
> -    msg[0] = imsg->len + 7;
> -    msg[1] = imsg->rs_addr;
> -    msg[2] = (imsg->netfn << 2) | imsg->rs_lun;
> -    msg[3] = -ipmb_checksum(msg + 1, 2, 0);
> -    msg[4] = imsg->rq_addr;
> -    msg[5] = (imsg->rq_seq << 2) | imsg->rq_lun;
> -    msg[6] = imsg->cmd;
> -    memcpy(msg + 7, imsg->data, imsg->len);
> -    msg_len = imsg->len + 7;
> -    msg[msg_len] = -ipmb_checksum(msg + 4, msg_len - 4, 0);
> -    msg_len++;
> -
> -    raw_send(ipmb, msg, msg_len);
> -}
> -
> -static int
> -ipmb_setup(ipmbserv_data_t *ipmb)
> +int
> +ipmb_init(ipmbserv_data_t *ipmb)
>  {
> -    struct ipmb_data *info;
> -
> -    info = malloc(sizeof(*info));
> -    if (!info)
> -	return -1;
> -    memset(info, 0, sizeof(*info));
> -    ipmb->codec_info = info;
> -    ipmb->connected = 1;
> +    ipmb->channel.return_rsp = ipmb_return_rsp;
> +    chan_init(&ipmb->channel);
>      return 0;
>  }
>  
> @@ -182,23 +151,22 @@ ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr)
>      unsigned int chan_num;
>      int err;
>      const char *tok;
> +    char *ipmbdev;
>  
>      err = get_uint(tokptr, &chan_num, errstr);
> -    if (!err && (chan_num >= IPMI_MAX_CHANNELS)) {
> +    if (err)
> +	return -1;
> +    if (chan_num >= IPMI_MAX_CHANNELS) {
> +	*errstr = "Invalid channel number, must be 0-15";
>  	return -1;
>      }
>  
>      /*
> -     * Primary IPMB associated with channel 0 was already
> -     * initialized in ipmi_mc_alloc_unconfigured.
> -     * So skip the check for channel already in use if
> -     * ipmb is listed in the config file (lan.conf).
> +     * Allow an IPMB channel to override the default channel 0.
>       */
> -    if (chan_num != 0) {
> -	if (sys->chan_set[chan_num] != NULL) {
> -	    *errstr = "Channel already in use";
> -	    return -1;
> -	}
> +    if (chan_num != 0 && sys->chan_set[chan_num]) {
> +	*errstr = "Channel already in use";
> +	return -1;
>      }
>  
>      tok = mystrtok(NULL, " \t\n", tokptr); @@ -207,30 +175,20 @@ 
> ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr)
>  	return -1;
>      }
>  
> -    tok = mystrtok(NULL, " \t\n", tokptr);
> -    if (strlen(tok) > IPMIDEV_MAX_SIZE) {
> -	*errstr = "Length of device file name %s > 15";
> -	return -1;
> -    }
> -
> -    strcpy(sys->ipmidev, tok);
> -    if (!(sys->ipmidev)) {
> -	*errstr = "Unable to set ipmidev";
> +    ipmbdev = strdup(tok);
> +    if (!ipmbdev) {
> +	*errstr = "Unable to alloc ipmi_dev_int";
>  	return -1;
>      }
>  
>      ipmb = malloc(sizeof(*ipmb));
>      if (!ipmb) {
> +	free(ipmbdev);
>  	*errstr = "Out of memory";
>  	return -1;
>      }
>      memset(ipmb, 0, sizeof(*ipmb));
> -
> -    ipmb->codec = (ser_codec_t *)malloc(sizeof(ser_codec_t));
> -    if (!ipmb->codec) {
> -	*errstr = "Out of memory";
> -	return -1;
> -    }
> +    ipmb->ipmbdev = ipmbdev;
>  
>      ipmb->channel.session_support = IPMI_CHANNEL_SESSION_LESS;
>      ipmb->channel.medium_type = IPMI_CHANNEL_MEDIUM_IPMB; @@ -238,18 
> +196,9 @@ ipmb_read_config(char **tokptr, sys_data_t *sys, const char 
> **errstr)
>  
>      ipmb->channel.channel_num = chan_num;
>  
> -    ipmb->codec->handle_char = ipmb_handle_char;
> -    ipmb->codec->send = ipmb_send;
> -    ipmb->codec->setup = ipmb_setup;
> -
>      ipmb->sysinfo = sys;
>      ipmb->channel.chan_info = ipmb;
>  
> -    if (chan_num == 0)
> -	ipmb->channel.prim_ipmb_in_cfg_file = 1;
> -    else
> -	ipmb->channel.prim_ipmb_in_cfg_file = 0;
> -
>      sys->chan_set[chan_num] = &ipmb->channel;
>  
>      return 0;
> diff --git a/lanserv/ipmi_sim.c b/lanserv/ipmi_sim.c index 
> 0a20e22..ad273e2 100644
> --- a/lanserv/ipmi_sim.c
> +++ b/lanserv/ipmi_sim.c
> @@ -104,7 +104,6 @@ static char *command_string = NULL;  static char 
> *command_file = NULL;  static int debug = 0;  static int nostdio = 0; 
> -static char g_ipmi_dev[15];
>  
>  /*
>   * Keep track of open sockets so we can close them on exec().
> @@ -603,14 +602,26 @@ ipmb_data_ready(int fd, void *cb_data, 
> os_hnd_fd_id_t *id)
>  
>          ipmb->os_hnd->remove_fd_to_wait_for(ipmb->os_hnd, id);
>          close(fd);
> -        ipmb->con_fd = -1;
> +        ipmb->fd = -1;
>          return;
>      }
>  
> -    ipmb->bind_fd = -1;
> -    serserv_handle_data(ipmb, msgd, len);
> -    ipmb->bind_fd = 0;
> -    serserv_handle_data(ipmb, msgd, 1);
> +    ipmb_handle_data(ipmb, msgd, len); }
> +
> +static void
> +ipmb_send(ipmbserv_data_t *ipmb, unsigned char *data, unsigned int 
> +data_len) {
> +    int rv;
> +
> +    if (ipmb->fd == -1)
> +	/* Not connected */
> +	return;
> +
> +    rv = write(ipmb->fd, data, data_len);
> +    if (rv) {
> +	/* FIXME - log an error. */
> +    }
>  }
>  
>  static int
> @@ -619,34 +630,37 @@ ipmb_channel_init(void *info, channel_t *chan)
>      misc_data_t *data = info;
>      ipmbserv_data_t *ipmb = chan->chan_info;
>      int err;
> -    int fd;
>      os_hnd_fd_id_t *fd_id;
>  
>      ipmb->os_hnd = data->os_hnd;
>      ipmb->user_info = data;
> -    ipmb->send_out = ser_send;
> -    err = serserv_init(ipmb);
> +    ipmb->send_out = ipmb_send;
>  
> +    err = ipmb_init(ipmb);
>      if (err) {
> -        fprintf(stderr, "Unable to init ipmb: 0x%x\n", err);
> -        exit(1);
> +	fprintf(stderr, "Unable to init ipmb: 0x%x\n", err);
> +	exit(1);
>      }
>  
> -    fd = ipmb_open(g_ipmi_dev);
> -    if (fd == -1){
> +    ipmb->fd = ipmb_open(ipmb->ipmbdev);
> +    if (ipmb->fd == -1){
>          fprintf(stderr, "Unable to open ipmi device file: 0x%x\n", err);
> -        exit(1);
> +	exit(1);
>      }
>  
> -    ipmb->con_fd = fd;
> +    err = data->os_hnd->add_fd_to_wait_for(data->os_hnd, ipmb->fd,
> +					   ipmb_data_ready, ipmb,
> +					   NULL, &fd_id);
> +    if (err) {
> +	close(ipmb->fd);
> +	ipmb->fd = -1;
> +        fprintf(stderr, "Unable to open ipmi device file: 0x%x\n", err);
> +	exit(1);
> +    }
>  
> -    err = data->os_hnd->add_fd_to_wait_for(data->os_hnd, ipmb->con_fd,
> -                                            ipmb_data_ready, ipmb,
> -                                            NULL, &fd_id);
> -    if (!err)
> -        isim_add_fd(fd);
> +    isim_add_fd(ipmb->fd);
>  
> -    return err;
> +    return 0;
>  }
>  
>  static void
> @@ -1584,9 +1598,6 @@ main(int argc, const char *argv[])
>      if (read_config(&sysinfo, config_file, print_version))
>  	exit(1);
>  
> -    if (sysinfo.ipmidev != NULL)
> -	strcpy(g_ipmi_dev, sysinfo.ipmidev);
> -
>      if (print_version)
>  	exit(0);
>  
> --
> 2.17.1
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Flist
> s.sourceforge.net%2Flists%2Flistinfo%2Fopenipmi-developer&amp;data=02%
> 7C01%7CAsmaa%40mellanox.com%7Ca1a21d60cefc486687ae08d7152b88f3%7Ca6529
> 71c7d2e4d9ba6a4d149256f461b%7C0%7C0%7C637001149036526034&amp;sdata=pfr
> 3%2B0eIkq8xeDqC%2BYxYJa8MLNpj68V7F3udkcNSQLU%3D&amp;reserved=0


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
