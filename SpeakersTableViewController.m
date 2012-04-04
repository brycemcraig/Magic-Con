//
//  SpeakersTableViewController.m
//  Magic-Con
//
//  Created by Bryce Craig on 3/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SpeakersTableViewController.h"


@implementation SpeakersTableViewController

NSMutableArray *speakersArray;


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ( [segue.identifier isEqualToString:@"ShowSpeaker"] ) {
        
        DisplayViewController *dvc = [segue destinationViewController];
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
//        Speaker *c = [speakersArray objectAtIndex:[path row]];
//        [dvc setCurrentSpeaker:c];
        NSDictionary *dict = [speakersArray objectAtIndex:[path row]];
        [dvc setCurrentSpeakerDict:dict];
    }
    
    
    
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    
//    speakersArray = [[NSMutableArray alloc] init];
    
    
    speakersArray = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"local-speakers" ofType:@"plist"]];
    
//    Speaker *speaker = [[Speaker alloc] init];
//    [speaker setName:@"David Acer"];
//    [speaker setFilename:@"david-acer.jpeg"];
//    [speaker setIcon:@"acer_sm.png"];
//    [speaker setNotes:@"David Acer is an award-winning writer, comedian, and inventor of magic tricks who has done crazy things on television shows around the world, like protesting outside a train station dressed as a giant penny while inviting people to lie down on the tracks to “see how it feels.” And limping to the couch for a talkshow interview with a Denver boot on his leg because he had “a few unpaid j-walking tickets.” But younger viewers (and insomniacs) are more likely to recognize him as “Doubting Dave” from the syndicated show, Mystery Hunters, which earned him two Gemini nominations (the Canadian equivalent of the Emmys) for Best Writing in a Children’s Non-Fiction Series, and the publication of his spin-off book, GOTCHA!, now a Canadian bestseller. Over the past 25 years, David has also published an eclectic array of groundbreaking magic, leading to performances at The Magic Castle, lectures at F.I.S.M., and the 2009 Magician of the Year award from the Canadian Association of Magicians."];
//    [speakersArray addObject:speaker];
//    
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"David Blaine"];
//    [speaker setFilename:@"david-blaine.jpeg"];
//    [speaker setIcon:@"blaine_sm.png"];
//    [speaker setNotes:@"In 1997 he took the art of magic to new heights with his debut television special, Street Magig. He presented a genre of magic that was organically fed by pop culture’s own dynamic surroundings. It was live, on the street, in-your-face, and uncensored. People actually believed in his abilities. He was a ‘Magic Man’ capable of anything."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Tony Chang"];
//    [speaker setFilename:@"tony-chang.jpeg"];
//    [speaker setIcon:@"chang_sm.png"];
//    [speaker setNotes:@"Known for performing very difficult and visual sleight of hand magic,  many have regarded his obsession for details as a fresh approach to technical magic. A student for over seventeen years, Tony has published many of his own work for the magic community.  His blog, doublefacers.com, has become an underground hit among the magic community."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Dani DaOrtiz"];
//    [speaker setFilename:@"dani-daortiz.jpeg"];
//    [speaker setIcon:@"daortiz_sm.png"];
//    [speaker setNotes:@"Dani DaOrtiz is a rising star of Spanish close-up magic, who many consider the next Juan Tamariz. He has many publications to his credit and is the editor of ElManuscrito, a magazine which focuses on articles of lasting depth about the foremost figures and milestones in magic."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Christian Engblom"];
//    [speaker setFilename:@"christian-engblom.jpeg"];
//    [speaker setIcon:@"engblom_sm.png"];
//    [speaker setNotes:@"Christian started magic at the age of three, and had his first public performance at the age of five for a finnish-swedish radio program. His hobby followed him through his childhood, until it fully awakened during his exchange year in USA, when he recieved a very good magic book for his christmas present. Magic turned into a profession in 1992. Engblom still studies the field of magic and makes study trips around the world. He also educates colleagues in the mysteries of magic. Engblom has competed in magic, winning the coveted Cloce-up Finnish Championships in 2003. Engblom, who specialises in close-up magic as well as card magic, can ne seen at different corporate- and private functions, on cruise ships, on TV, festivals and all around. If you have ever been interested in card cheating, Christian can show you how they really do it. The multi lingual magician can perform in his mother tongue, swedish. He also speaks fluently english and finnish and good spanish."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Brad Fulton"];
//    [speaker setFilename:@"brad-fulton.jpeg"];
//    [speaker setIcon:@"fulton_sm.png"];
//    [speaker setNotes:@"As a professional photographer, Brad Fulton is known for his unique style and amazing ability to capture mystery within a single frame, a term he coined 'single frame cinema'. Since 2003, we’ve worked closely with Brad on various projects, which were always an exploration of our creative senses. Our professional collaborations are legendary. The iconic images captured for The Trilogy, the haunting images for the limited edition and sought after book Uzumaki (out of print), and the noirish visualization of Sybil. Early 2011, Brad was hired on as Creative Director for Dan and Dave Industries and had an important influence on their redesign. Brad currently oversees the design of all new projects and ensures that our creative vision and stringent demand for perfection is upheld and brought to life.  His breathtaking photography also graces the pages of our website as well as our entire shoppe catalogue."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Daniel Garcia"];
//    [speaker setFilename:@"daniel-garcia.jpeg"];
//    [speaker setIcon:@"garcia_sm.png"];
//    [speaker setNotes:@"Not only is he extremely innovative and entertaining, Danny is a full time creative consultant for magic’s biggest names."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Mahdi Gilbert"];
//    [speaker setFilename:@"mahdi-gilbert.jpeg"];
//    [speaker setIcon:@"gilbert_sm.png"];
//    [speaker setNotes:@"Mahdi Gilbert was forced to reinvent magic for himself, literally redefining how a deck of cards can be handled. A rare gentleman and scoundrel who palms without palms, shuffles without fingers and is living proof that nothing is impossible."];
//    [speakersArray addObject:speaker];
//    
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Kevin Ho"];
//    [speaker setFilename:@"kevin-ho.jpeg"];
//    [speaker setIcon:@"ho_sm.png"];
//    [speaker setNotes:@"Kevin Ho is a Singapore-based magician, card flourisher, and co-founder of Virtuoso, a elite group of flourishers who have taken the art to new heights, both technically, and stylistically. Born in Hartford, Connecticut to both Chinese and Vietnamese parents, Kevin tends to answer the question 'So, where are you from?' by sighing, 'Well… it’s a long story.' In 2008, his second booklet on magic, Smooth Operations, was produced and released in collaboration with Dan and Dave Buck of Dan and Dave Buck fame. Currently, he is in the final stages of pre-production for a new, long-awaited project from The Virts, which will finally be making its debut in late 2011. His other interests include filmmaking, creative writing, and incessant daydreaming."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Jared Kopf"];
//    [speaker setFilename:@"jared-kopf.jpeg"];
//    [speaker setIcon:@"kopf_sm.png"];
//    [speaker setNotes:@"An exceptional student of magic with a repertoire of many original tricks, which have recently seen print in various journals and magazines, such Genii and MUM. Jared performs a formal show regularly throughout Texas."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Chris Korn"];
//    [speaker setFilename:@"chris-korn.jpeg"];
//    [speaker setIcon:@"korn_sm.png"];
//    [speaker setNotes:@"Globally renowned, Chris Korn has captivated audiences in over 20 foreign countries – from Japan to South Africa – and in over 100 cities in the United States, showcasing his extensive repertoire of ecstatic illusion. Since starring in his own series, Mondo Magic, on A&E, Mondo Magic Singapore, and Magic Asia on AXN (the #1 TV show throughout Asia and Singapore), Chris Korn has come to be known by the show’s 74 million viewers, as not only one of the most talented sleight-of-hand magicians in the world, but as an amazing over all entertainer."];
//    [speakersArray addObject:speaker];
//    
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Chad Long"];
//    [speaker setFilename:@"chad-long.jpeg"];
//    [speaker setIcon:@"long_sm.png"];
//    [speaker setNotes:@"A multiple award winner and all-around ‘cheesy’ guy, Chad Long takes a few days out of his busy corporate schedule to remind us what it feels like to be a layman again."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"John Lovick"];
//    [speaker setFilename:@"john-lovick.jpeg"];
//    [speaker setIcon:@"lovick_sm.png"];
//    [speaker setNotes:@"His skill and style as a magician have mesmerized and intrigued audiences in venues ranging from corporate events to private parties to the world-famous Magic Castle in Hollywood. His creative flair and imaginative presentations add humor and excitement to any event."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Roberto Mansilla"];
//    [speaker setFilename:@"roberto-mansilla.jpeg"];
//    [speaker setIcon:@"mansilla_sm.png"];
//    [speaker setNotes:@"Roberto Mansilla is considered the most prominent young magician of his country, Argentina. He has performed and lectured at the most important magic conventions in South American and it’s an honor for us to bring his talents to America for Magic-Con 2012. Inspired by Hofzinser and Robert-Houdin, Mansilla’s specialty is sleight of hand card magic in a parlour setting."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Doug McKenzie"];
//    [speaker setFilename:@"doug-mckenzie.jpeg"];
//    [speaker setIcon:@"mckenzie_sm.png"];
//    [speaker setNotes:@"Doug McKenzie has developed a number of illusions and effects for television. He currently works for David Blaine as a creative consultant. He is also the Director of The Conjuring Art’s Research Center’s Hocus Pocus Project, a charity program educating and empowering youth through magic."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Lance Pierce"];
//    [speaker setFilename:@"lance-pierce.jpeg"];
//    [speaker setIcon:@"pierce_sm.png"];
//    [speaker setNotes:@"Ricky Smith may have founded the Buck Twins, but Lance Pierce gave birth to Ricky Smith, making him the grandparent of all that is good and wholesome about modern card magic. What sometimes passes for a wry wit is actually the complete absence of any at all, and this is his secret weapon when stalking the bars and nightclubs, looking for anybody who will actually stay to the end of a trick. “Remember,” he constantly cautions us, “spectators are liars and fools, and just because they repeatedly insist that you didn’t get the right card doesn’t mean you can’t make them tip you a fiver.” Such advice has proved invaluable in providing Lance a remarkable living and staying half a step ahead of the law. Except for the time in Chicago. And Florida. And the years 2003-2007. No matter; he still enjoys performing magic everywhere, as long as it doesn’t involve the crossing of state lines. With 30 years of dedicated practice and influence from generations of masters , Lance has entertained audiences from all over the world with his own unique touch. Even with his success, the hat he’s most proud to wear though is student-ever perusing the next beautiful idea."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Piff the Magic Dragon"];
//    [speaker setFilename:@"piff-the-magic-dragon.jpeg"];
//    [speaker setIcon:@"piff_sm.png"];
//    [speaker setNotes:@"Piff is the creation of John van der Put, The Magic Circle Close-up Magician of the year 2011 and an award-winning contemporary magician for the past fifteen years. The hit of the party according to Sir Ian McKellen, John is one of the youngest magicians ever to lecture at The Magic Circle, and was crowned IBM Close-Up Champion in 2009."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Adam Rubin"];
//    [speaker setFilename:@"adam-rubin.jpeg"];
//    [speaker setIcon:@"rubin_sm.png"];
//    [speaker setNotes:@"Adam Rubin is an acclaimed children’s author and advertising creative director. However, his secret passion is magic tricks. Adam’s ingenuity and insight have granted him access to magic’s inner sanctum where he tries his best not to giggle with excitement."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Ricky Smith"];
//    [speaker setFilename:@"ricky-smith.jpeg"];
//    [speaker setIcon:@"smith_sm.png"];
//    [speaker setNotes:@"Ricky Smith is considered one of humanity’s greatest individuals, if only 100% for his founding of the Buck Twins. The rest of his greatness can be attributed to his position as Student in Residence at the distinctive Conjuring Arts Research Center. Previously he worked for H & R Magic Books which he says was “awesome”, and he likes difficult sleight of hand that is elegant in construction. His founding of the Buck Twins consisted of teaching Dan and Dave a couple of tricks when they were first getting started and for otherwise giving them an excellent example of what not to do."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Jim Steinmeyer"];
//    [speaker setFilename:@"jim-steinmeyer.jpeg"];
//    [speaker setIcon:@"steinmeyer_sm.png"];
//    [speaker setNotes:@"Jim Steinmeyer is responsible for popular illusions featured by professional magicians around the world, and special effects in theatrical shows from Broadway to Las Vegas. Through his designs and his writing on historical magic, he’s been credited with creating the “defining illusions in contemporary magic:” deceptions featured by Doug Henning, David Copperfield, Siegfried and Roy, Harry Blackstone, Orson Welles, The Pendragons, Lance Burton, Mark Kalin and Jinger and many others."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Cyril Takayama"];
//    [speaker setFilename:@"cyril-takayama.jpeg"];
//    [speaker setIcon:@"takayama_sm.png"];
//    [speaker setNotes:@"Cyril is a star of Japanese television where his magic specials are among the highest rated shows. In 2007 The Academy of Magical Arts nominated him Magician of the Year. Last year he toured throughout Japan and played to sold out audiences."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Enrico de la Vega"];
//    [speaker setFilename:@"enrico-de-la-vega.jpeg"];
//    [speaker setIcon:@"de-la-vega_sm.png"];
//    [speaker setNotes:@"Having created, produced, and starred in NBC’s  T.H.E.M.  (Totally Hidden Extreme Magic) in 2004, Enrico de la Vega pioneered the way for the hidden-camera magic genre. He currently consults, designs, and directs for Cyril Takayama and other magicians across the globe."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Michael Weber"];
//    [speaker setFilename:@"michael-weber.jpeg"];
//    [speaker setIcon:@"weber_sm.png"];
//    [speaker setNotes:@"Michael Weber is one of the most influential thinkers in the magical arts today. He’s an accomplished magician, mentalist, speaker for Fortune 500s, and a film/television consultant with business partner and long time friend, Ricky Jay."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Paul Wilson"];
//    [speaker setFilename:@"paul-wilson.jpeg"];
//    [speaker setIcon:@"wilson_sm.png"];
//    [speaker setNotes:@"Paul Wilson is a world-renowned expert on cons, scams, and cheating methods. He is the star of the hit BBC show The Real Hustle, with ‘partners in crime’ Alexis Conran and Jessica Jane Clement."];
//    [speakersArray addObject:speaker];
//    
//    speaker = [[Speaker alloc] init];
//    [speaker setName:@"Rob Zabrecky"];
//    [speaker setFilename:@"rob-zabrecky.jpeg"];
//    [speaker setIcon:@"zabrecky_sm.png"];
//    [speaker setNotes:@"Through a wide range of artistic work that spans acting, magic, and music, Rob Zabrecky has established himself globally as an original entertainer. He is regarded internationally for his cumulative and diverse projects in film & television, magic and music."];
//    [speakersArray addObject:speaker];
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [speakersArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SpeakerCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
   NSDictionary *current = [speakersArray objectAtIndex:indexPath.row];
    
    [cell.textLabel setText:[current objectForKey:@"name"]];
    
    UIImage *image = [UIImage imageNamed:[current objectForKey:@"icon"]];
    
    cell.imageView.image = image;
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
